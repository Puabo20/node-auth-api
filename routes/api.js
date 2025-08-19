const express = require('express');
const router = express.Router();

// Users API
router.get('/users', async (req, res) => {
  res.json([{ id: 1, username: 'demoUser' }]);
});

router.post('/users', async (req, res) => {
  const { username, password } = req.body;
  res.json({ message: 'User created', username });
});

module.exports = router;
