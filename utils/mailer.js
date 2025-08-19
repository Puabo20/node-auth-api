const nodemailer = require('nodemailer');

const transporter = nodemailer.createTransport({
  service: 'Gmail',
  auth: {
    user: process.env.EMAIL_USER,
    pass: process.env.EMAIL_PASS,
  },
});

exports.sendWelcomeEmail = async (to, username) => {
  const mailOptions = {
    from: process.env.EMAIL_USER,
    to,
    subject: 'Welcome!',
    text: `Hi ${username}, welcome to our app!`,
  };
  return transporter.sendMail(mailOptions);
};

exports.sendVerificationEmail = async (to, token) => {
  const mailOptions = {
    from: process.env.EMAIL_USER,
    to,
    subject: 'Verify your email',
    text: `Click this link to verify your email: http://yourdomain.com/api/users/verify-email?token=${token}`,
  };
  return transporter.sendMail(mailOptions);
};
