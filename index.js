require('dotenv').config();
const express = require('express');
const mongoose = require('mongoose');
const { sendWelcomeEmail, sendVerificationEmail } = require('./utils/mailer');

const app = express();
app.use(express.json());

mongoose.connect(process.env.MONGO_URI, {
  useNewUrlParser: true,
  useUnifiedTopology: true,
})
.then(() => console.log('MongoDB connected'))
.catch(err => console.error('MongoDB connection error:', err));

app.post('/api/welcome', async (req, res) => {
  const { email, username } = req.body;
  try {
    await sendWelcomeEmail(email, username);
    res.json({ message: 'Welcome email sent!' });
  } catch (err) {
    res.status(500).json({ error: 'Failed to send welcome email.' });
  }
});

app.post('/api/verify', async (req, res) => {
  const { email, token } = req.body;
  try {
    await sendVerificationEmail(email, token);
    res.json({ message: 'Verification email sent!' });
  } catch (err) {
    res.status(500).json({ error: 'Failed to send verification email.' });
  }
});

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
