@echo off
echo Initializing Git...
git init
echo Adding remote origin...
git remote add origin https://github.com/iliakirillov1111-droid/7kcasino1.git
if %errorlevel% neq 0 (
    echo Remote already exists, updating URL...
    git remote set-url origin https://github.com/iliakirillov1111-droid/7kcasino1.git
)
echo Adding files...
git add .
echo Committing...
git commit -m "Initial commit: 7K Casino Website"
echo Setting branch to main...
git branch -M main
echo Pushing to GitHub...
git push https://iliakirillov1111-droid@github.com/iliakirillov1111-droid/7kcasino1.git main --force
if %errorlevel% neq 0 (
    echo.
    echo ERROR: Push failed. Make sure you are logged in or have correct permissions.
)
echo.
echo Done! Your 7K Casino site is on GitHub.
pause
