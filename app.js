const express = require('express');
const app = express();
app.use(express.json());
const userRoutes = require('./routes/users');
app.use('/api/users', userRoutes);
// Database connection
require('./db');
const dashboardRoutes = require('./routes/dashboard');
app.use('/api/dashboard', dashboardRoutes);
// Import routes
const authRoutes = require('./routes/auth');
const protectedRoutes = require('./routes/protected');

app.use('/api', authRoutes);
app.use('/api', protectedRoutes);

const PORT = process.env.PORT || 4006;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
const express=require('express'),mongoose=require('mongoose'),bcrypt=require('bcrypt'),crypto=require('crypto'),app=express();app.use(express.json());mongoose.connect('mongodb://localhost:27017/authdemo',{useNewUrlParser:true,useUnifiedTopology:true});const userSchema=new mongoose.Schema({username:{type:String,unique:true},email:String,passwordHash:String,isAdmin:{type:Boolean,default:false},resetToken:String});const User=mongoose.model('User',userSchema);app.post('/api/register',async(req,res)=>{const{username,password,email}=req.body;if(await User.findOne({username}))return res.status(400).json({error:'User exists'});const passwordHash=await bcrypt.hash(password,10),isAdmin=username==='Puabo20',user=new User({username,email,passwordHash,isAdmin});await user.save();res.json({message:'Account created',isAdmin});});app.post('/api/login',async(req,res)=>{const{username,password}=req.body,user=await User.findOne({username});if(!user||!(await bcrypt.compare(password,user.passwordHash)))return res.status(401).json({error:'Invalid credentials'});res.json({message:'Login successful',isAdmin:user.isAdmin});});app.post('/api/forgot-password',async(req,res)=>{const{username}=req.body,user=await User.findOne({username});if(!user)return res.status(404).json({error:'User not found'});user.resetToken=crypto.randomBytes(20).toString('hex');await user.save();res.json({message:'Reset token created',token:user.resetToken});});app.post('/api/reset-password',async(req,res)=>{const{username,token,newPassword}=req.body,user=await User.findOne({username});if(!user||user.resetToken!==token)return res.status(400).json({error:'Invalid token'});user.passwordHash=await bcrypt.hash(newPassword,10);user.resetToken=undefined;await user.save();res.json({message:'Password reset'});});app.listen(3000,()=>console.log('Server running on port 3000'));module.exports=app;
require('dotenv').config();
const express = require('express');
const mongoose = require('mongoose');
const cors = require('cors');

const app = express();

app.use(cors());
app.use(express.json());

// Import user routes
const userRoutes = require('./routes/user');
app.use('/api/users', userRoutes);

// MongoDB connection
mongoose.connect(process.env.MONGO_URI, { useNewUrlParser: true, useUnifiedTopology: true })
  .then(() => console.log('MongoDB connected'))
  .catch(err => console.log(err));

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
