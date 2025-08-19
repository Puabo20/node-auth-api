const mongoose = require('mongoose');

const showSchema = new mongoose.Schema({
  title: { type: String, required: true },
  description: String,
  startDate: Date,
  endDate: Date,
  media: [{ type: mongoose.Schema.Types.ObjectId, ref: 'Media' }],
  contracts: [{ type: mongoose.Schema.Types.ObjectId, ref: 'Contract' }]
});

module.exports = mongoose.model('Show', showSchema);
