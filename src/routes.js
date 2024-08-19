import { Router } from "express";
import { libro } from "./controller.js";

export const router = Router()

router.get('/biblioteca', libro.getAll);
router.get('/biblioteca/:id', libro.getOne);
router.post('/biblioteca',libro.add);
router.delete('/biblioteca', libro.delete);