const express = require('express');
const router = express.Router();
const { register, login, adminOnly } = require('../controllers/userController');
const { authenticateJWT, isAdmin } = require('../middleware/auth');

// Registration route
router.post('/register', register);

// Login route
router.post('/login', login);

// Admin-only route
router.get('/admin', authenticateJWT, isAdmin, adminOnly);

module.exports = router;
