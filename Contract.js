const mongoose = require('mongoose');

const contractSchema = new mongoose.Schema({
  show: { type: mongoose.Schema.Types.ObjectId, ref: 'Show' },
  user: { type: mongoose.Schema.Types.ObjectId, ref: 'User' },
  details: String,
  signed: { type: Boolean, default: false },
  signedAt: Date
});

module.exports = mongoose.model('Contract', contractSchema);
