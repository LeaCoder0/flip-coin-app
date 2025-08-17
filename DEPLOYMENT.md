# 🚀 Deployment Guide - Free Hosting for Education

This guide will help you deploy your "Flip a Coin" web app to free hosting platforms.

## 📋 Prerequisites

1. **GitHub Account** (free)
2. **Git** installed on your computer
3. **Your Flask app** (already ready!)

## 🎯 Option 1: Render (Recommended - Easiest)

### Step 1: Push to GitHub
```bash
# Initialize git repository
git init
git add .
git commit -m "Initial commit: Flip a Coin web app"

# Create a new repository on GitHub, then:
git remote add origin https://github.com/YOUR_USERNAME/flip-coin-app.git
git push -u origin main
```

### Step 2: Deploy on Render
1. Go to [render.com](https://render.com) and sign up
2. Click "New +" → "Web Service"
3. Connect your GitHub account
4. Select your repository
5. Configure:
   - **Name**: `flip-coin-app`
   - **Environment**: `Python 3`
   - **Build Command**: `pip install -r requirements.txt`
   - **Start Command**: `python app.py`
6. Click "Create Web Service"

### Step 3: Get Your URL
- Render will give you a URL like: `https://your-app-name.onrender.com`
- Your app will be live in a few minutes!

## 🎯 Option 2: Railway (Very Easy)

### Step 1: Deploy on Railway
1. Go to [railway.app](https://railway.app) and sign up
2. Click "New Project" → "Deploy from GitHub repo"
3. Select your repository
4. Railway will automatically detect it's a Python app
5. Deploy!

### Step 2: Get Your URL
- Railway provides a URL like: `https://your-app-name.railway.app`

## 🎯 Option 3: PythonAnywhere (Python-Specific)

### Step 1: Sign Up
1. Go to [pythonanywhere.com](https://pythonanywhere.com)
2. Create a free account

### Step 2: Upload Your Code
1. Go to "Files" tab
2. Upload your files or clone from GitHub
3. Go to "Web" tab → "Add a new web app"
4. Choose "Flask" and Python 3.12

### Step 3: Configure
1. Set your source code directory
2. Set WSGI configuration file
3. Reload your web app

## 🎯 Option 4: Heroku (Classic Choice)

### Step 1: Install Heroku CLI
```bash
# Download and install from: https://devcenter.heroku.com/articles/heroku-cli
```

### Step 2: Deploy
```bash
# Login to Heroku
heroku login

# Create Heroku app
heroku create your-app-name

# Deploy
git push heroku main

# Open your app
heroku open
```

## 🔧 Environment Variables (Optional)

For production, you might want to set:
```bash
FLASK_ENV=production
```

## 📊 Monitoring Your App

All platforms provide:
- **Logs**: View app logs and errors
- **Metrics**: Monitor performance
- **Scaling**: Upgrade when needed

## 🎓 Educational Benefits

- **Real-world deployment experience**
- **Domain management**
- **Production environment exposure**
- **CI/CD pipeline understanding**

## 🔗 Your App URLs

After deployment, you'll have:
- **Production URL**: `https://your-app-name.platform.com`
- **GitHub Repository**: `https://github.com/YOUR_USERNAME/flip-coin-app`

## 🚨 Important Notes

1. **Free tiers have limitations**:
   - Render: 750 hours/month
   - Railway: $5 credit/month
   - Heroku: Sleep after 30 minutes of inactivity

2. **Keep your code updated**:
   - Regular commits to GitHub
   - Monitor for security updates

3. **Backup your data**:
   - Your code is safe in GitHub
   - Consider database backups for future features

## 🎉 Success!

Once deployed, share your URL with friends and family to show off your coin-flipping skills! 🪙

---

**Need help?** Most platforms have excellent documentation and community support for educational projects.
