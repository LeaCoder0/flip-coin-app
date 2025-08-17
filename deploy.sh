#!/bin/bash

echo "🚀 Preparing your Flip a Coin app for deployment..."

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install git first."
    exit 1
fi

# Initialize git repository if not already done
if [ ! -d ".git" ]; then
    echo "📁 Initializing git repository..."
    git init
    git add .
    git commit -m "Initial commit: Flip a Coin web app"
    echo "✅ Git repository initialized!"
else
    echo "📁 Git repository already exists"
fi

echo ""
echo "🎯 Next steps for deployment:"
echo ""
echo "1. Create a GitHub repository:"
echo "   - Go to https://github.com/new"
echo "   - Name it: flip-coin-app"
echo "   - Make it public"
echo ""
echo "2. Push to GitHub:"
echo "   git remote add origin https://github.com/YOUR_USERNAME/flip-coin-app.git"
echo "   git push -u origin main"
echo ""
echo "3. Deploy to Render (recommended):"
echo "   - Go to https://render.com"
echo "   - Sign up and connect GitHub"
echo "   - Create new Web Service"
echo "   - Select your repository"
echo "   - Deploy!"
echo ""
echo "📖 See DEPLOYMENT.md for detailed instructions"
echo ""
echo "🎉 Your app will be live at: https://your-app-name.onrender.com"
