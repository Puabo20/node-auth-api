const mongoose = require('mongoose');
const db = require('./db');
const User = require('./models/User');
const Show = require('./models/Show');
const Media = require('./models/Media');
const Contract = require('./models/Contract');

async function seed() {
  await User.deleteMany({});
  await Show.deleteMany({});
  await Media.deleteMany({});
  await Contract.deleteMany({});

  const users = await User.insertMany([
    { username: 'alice', password: 'password123', email: 'alice@example.com', role: 'admin' },
    { username: 'bob', password: 'password123', email: 'bob@example.com', role: 'user' }
  ]);

  const show = await Show.create({
    title: 'Copilot Live',
    description: 'AI-powered talk show',
    startDate: new Date('2025-09-01'),
    endDate: new Date('2025-09-30')
  });

  const media = await Media.create({
    type: 'image',
    url: 'https://example.com/show1.jpg',
    show: show._id
  });

  show.media = [media._id];
  await show.save();

  const contract = await Contract.create({
    show: show._id,
    user: users[0]._id,
    details: 'Host contract for Copilot Live',
    signed: true,
    signedAt: new Date()
  });

  show.contracts = [contract._id];
  await show.save();

  console.log('Database seeded!');
  process.exit();
}

seed();
