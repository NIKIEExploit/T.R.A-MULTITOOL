@echo off
color a
title multitool by team remote abushers 
@echo off
timeout /t 1 >nul
goto MainMenu
:MainMenu
cls
echo this is a multitool by team remote abushers
echo join our discord https://discord.gg/wP3UaKqs
echo discord username is teamremoteabushers. if the invite doesnt work, ill send it to you manually.
echo press space to continue...
pause >nul
cls
echo thank you for using my multitool! (big shoutout to r0py)
echo Select an option:  
echo 1. Discord Multitools  
echo 2. Display System Information  
echo 3. Alhacking Tools  
echo 4. 3TH1C4L MULTITOOL 
choice /c 1234 /n /m "Your choice: "  
if errorlevel 4 goto 3TH1C4L  
if errorlevel 3 goto AlhackingTools  
if errorlevel 2 goto SystemInfo  
if errorlevel 1 goto DiscordTools  

:DiscordTools  
echo Running Discord Multitools...  
@echo off
echo continue? Y/N
pause >nul 

echo                                     All set up! tool ready to use.
timeout /t 3 >nul
cls
echo use this tool catioulsy.
timeout /t 3 >nul

cls
echo  press enter to start
pause >nul
cls
echo loading
cls
echo (=   )
timeout /t 3 >nul
echo (==   )
timeout /t 3 >nul
echo (===  )
timeout /t 3 >nul
echo (==== )
timeout /t 3 >nul
echo (=====)
cls
echo discord tools loaded successfully!
timeout /t 1 >nul
cls
timeout /t 1 >nul
@echo off
:: Display menu
echo this menu contains a list of powerful discord multitools. use it responsibly.
echo Select a tool to install/load:
echo B - Buildware tools
echo E - Multi-Tools
echo F - RedTiger Tools
echo.

:: Wait for user choice
choice /c EFB /n /m "Press E for Multi-Tools, F for RedTiger, B for Buildware: " >nul

:: Check user's choice and execute corresponding commands
if errorlevel 3 goto Buildware
if errorlevel 2 goto RedTiger
if errorlevel 1 goto MultiTools

:MultiTools
echo Installing Multi-Tools...
git clone https://github.com/AtomTools/Multi-tools.git
cd Multi-tools
:: Make sure the install.sh script can run in Windows Subsystem for Linux (or Git Bash)
if exist install.sh bash install.sh
cd ..
goto end

:RedTiger
echo Installing RedTiger Tools...
git clone https://github.com/Rain798377/RedTiger-Tools.git
cd RedTiger-Tools
git pull
python Setup.py
cd ..
goto end

:Buildware
echo installing Buildware tools...
git clone https://github.com/YourUsername/Buildware-Tool.git
cd Buildware-Tool
git pull
python setup.py
cd ..
goto end

:end
echo done.
pause  
goto MainMenu  

:SystemInfo 
cls 
echo Displaying System Information...
cls
echo this will display your system info, do you want to continue? Y/N
pause >nul
echo loading network info...
timeout /t 2 >nul
netstat -an
timeout /t 2 >nul
echo loading system info...
timeout /t 2 >nul
systeminfo
timeout /t 2 >nul
echo loading file info...
timeout /t 2 >nul
dir/s
timeout /t 2 >nul 
pause  
goto MainMenu  

:AlhackingTools 
cls 
echo Launching Alhacking Tools...  
echo downloading AL hacking tools...
timeout /t 2 >nul 
git clone https://github.com/4lbH4cker/ALHacking
cd ALHacking
echo press space to continue...
pause >nul
echo starting AL hacking tools by 4lbh4cker
bash alhack.sh 
pause  
goto MainMenu  

:3TH1C4L
cls 
echo start 3TC1C4L multitool? Y/N
pause >nul
echo downloading 3TH1C4L multitool...
git clone https://github.com/RPxGoon/3TH1C4L-MultiTool
cd 3TH1C4L-Multitool
echo launching...
setup.bat

