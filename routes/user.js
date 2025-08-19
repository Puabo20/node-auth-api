const express = require('express');
const router = express.Router();
const { register, login, adminOnly } = require('../controllers/userController');
const { authenticateJWT, isAdmin } = require('../middleware/auth');

router.post('/register', register);
router.post('/login', login);
router.get('/admin', authenticateJWT, isAdmin, adminOnly);

module.exports = router;
