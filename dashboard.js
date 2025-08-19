const express = require('express');
const router = express.Router();
const authenticateToken = require('../middleware/authMiddleware');
const Show = require('../models/Show');
const User = require('../models/User');

// Dashboard summary (admin only)
router.get('/', authenticateToken, async (req, res) => {
  if (req.user.role !== 'admin') return res.status(403).json({ error: 'Forbidden' });

  const userCount = await User.countDocuments();
  const showCount = await Show.countDocuments();
  res.json({ userCount, showCount });
});

module.exports = router;
