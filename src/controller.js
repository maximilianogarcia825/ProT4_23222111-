import { pool } from './database.js';

class bibliotecaController {
    
    async getAll(req, res) {
        const [result] = await pool.query('SELECT * FROM biblioteca');
        res.json(result);
    }

    async getOne(req, res) {
        const libro = req.body;
        const {id}=req.params;
        console.log(id); 
        try {
            const [result] = await pool.query('SELECT * FROM biblioteca WHERE id = ?', [id]);
            console.log(result)
            res.json({ "Libro encontrado": result });
        } catch (err) {
            console.error(err);
            res.status(500).send('LIBRO NO ENCONTRADO');
        }
    }

    async add(req, res) {
        const libro = req.body;
        try {
            const [result] = await pool.query(
                'INSERT INTO biblioteca (nombre, autor, categoria, añopublicacion, ISBN) VALUES (?, ?, ?, ?, ?)',
                [libro.nombre, libro.autor, libro.categoria, libro.añopublicacion, libro.ISBN]
            );
            res.json({ "Id insertado": result.insertId });
        } catch (err) {
            console.error(err);
            res.status(500).send('Error al insertar el libro');
        }
    }

    async delete(req, res) {
        const libro = req.body;
        try {
            const [result] = await pool.query('DELETE FROM biblioteca WHERE ISBN = ?', [libro.ISBN]);
            res.json({ "Registros eliminados": result.affectedRows });
        } catch (err) {
            console.error(err);
            res.status(500).send('Error al eliminar el libro');
        }
    }
    
}

export const libro = new bibliotecaController();