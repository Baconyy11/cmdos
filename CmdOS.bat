@echo off
chcp 65001
title CmdOS 24.12.30
if not exist os goto key
goto startup

:key
cls
echo %random%-%random%-%random%-%random%>> key.txt
set /p key=<key.txt
echo Hello! Welcome to CmdOS Premium! 
echo To continue, you need to enter the key that we made for you.
if not exist key.txt goto setuperror1
set /p keyinput=
if %keyinput% == %key% goto setup
echo Incorrect key.
ping -n 2 localhost >nul
goto key

:setup
cls
del key.txt
echo --------------------------------------------------------------------------------------------
echo.
echo                                           CmdOS 
echo.
echo                                        -- Part 1 --
echo                                  -- Personal Information --
echo.
echo.
echo.
echo                                 For this part, we need to
echo                                 create a CmdOS Account.
echo.
echo.
echo.
echo --------------------------------------------------------------------------------------------
echo.
echo Enter email address.
echo For example, example@cmdos.com
set /p emailc=
md os
cd os
md personal
cd personal
echo %emailc%>> email.txt
echo Enter Name:
set /p namec=
echo %namec%>> name.txt
echo Do you choose to need a password everytime you turn on CmdOS? (Y/N)
set /p choosep=
if %choosep% == N goto setupp2
echo Enter password.
echo For example: b4c0n99!
set /p passwordc=
echo %passwordc%>> password.txt
:setupp2
cls
echo --------------------------------------------------------------------------------------------
echo.
echo                                           CmdOS
echo.
echo                                        -- Part 2 --
echo                                       -- Settings --
echo.
echo.
echo.
echo                                 For this part, we need to
echo                                 modify the settings.
echo.
echo.
echo.
echo --------------------------------------------------------------------------------------------
echo.
echo How would you like your user interface to be?
echo Here is the chart for colors.
echo For example, 1F is blue background with bright white text.
echo 0 = Black
echo 1 = Blue
echo 2 = Green
echo 3 = Aqua
echo 4 = Red
echo 5 = Purple
echo 6 = Yellow
echo 7 = White
echo 8 = Gray
echo 9 = Light Blue
echo A = Light Green
echo B = Light Aqua
echo C = Light Red
echo D = Light Purple
echo E = Light Yellow
echo F = Bright White
set /p color= Color: 
cd..
md color
cd color
echo %color% >> color.txt
cd..
cls
echo --------------------------------------------------------------------------------------------
echo.
echo                                           CmdOS
echo.
echo                                        Installing...
echo.
echo                                            5
echo --------------------------------------------------------------------------------------------
ping -n 2 localhost >nul
cls
echo --------------------------------------------------------------------------------------------
echo.
echo                                           CmdOS
echo.
echo                                        Installing...
echo.
echo                                            17
echo --------------------------------------------------------------------------------------------
ping -n 2 localhost >nul
cls
echo --------------------------------------------------------------------------------------------
echo.
echo                                           CmdOS
echo.
echo                                        Installing...
echo.
echo                                            18
echo --------------------------------------------------------------------------------------------
ping -n 2 localhost >nul
cls
echo --------------------------------------------------------------------------------------------
echo.
echo                                           CmdOS
echo.
echo                                        Installing...
echo.
echo                                            20
echo --------------------------------------------------------------------------------------------
ping -n 2 localhost >nul
cls
echo --------------------------------------------------------------------------------------------
echo.
echo                                           CmdOS
echo.
echo                                        Installing...
echo.
echo                                            29
echo --------------------------------------------------------------------------------------------
ping -n 2 localhost >nul
cls
echo --------------------------------------------------------------------------------------------
echo.
echo                                           CmdOS
echo.
echo                                        Installing...
echo.
echo                                            34
echo --------------------------------------------------------------------------------------------
ping -n 2 localhost >nul
cls
echo --------------------------------------------------------------------------------------------
echo.
echo                                           CmdOS
echo.
echo                                        Installing...
echo.
echo                                            49
echo --------------------------------------------------------------------------------------------
ping -n 2 localhost >nul
cls
echo --------------------------------------------------------------------------------------------
echo.
echo                                           CmdOS
echo.
echo                                        Installing...
echo.
echo                                            61
echo --------------------------------------------------------------------------------------------
ping -n 2 localhost >nul
cls
echo --------------------------------------------------------------------------------------------
echo.
echo                                           CmdOS
echo.
echo                                        Installing...
echo.
echo                                            85
echo --------------------------------------------------------------------------------------------
ping -n 2 localhost >nul
cls
echo --------------------------------------------------------------------------------------------
echo.
echo                                           CmdOS
echo.
echo                                        Installing...
echo.
echo                                            97
echo --------------------------------------------------------------------------------------------
ping -n 2 localhost >nul
cls
echo --------------------------------------------------------------------------------------------
echo.
echo                                           CmdOS
echo.
echo                                        Installing...
echo.
echo                                            98
echo --------------------------------------------------------------------------------------------
ping -n 2 localhost >nul
cls
echo --------------------------------------------------------------------------------------------
echo.
echo                                           CmdOS
echo.
echo                                        Installing...
echo.
echo                                            99
echo --------------------------------------------------------------------------------------------
ping -n 2 localhost >nul
cls
echo --------------------------------------------------------------------------------------------
echo.
echo                                           CmdOS
echo.
echo                                        Installing...
echo.
echo                                            100
echo --------------------------------------------------------------------------------------------
ping -n 2 localhost >nul
cd..
goto restart

:startup
cls
echo.
echo.
echo.
echo                                                                                   CmdOS
echo.
echo.
echo                                                                         ░░░░░░░░░░░░░░░░░░░░
ping -n 2 localhost >nul
cls
echo.
echo.
echo.
echo                                                                                   CmdOS
echo.
echo.
echo                                                                         ▓░░░░░░░░░░░░░░░░░░░
cls
echo.
echo.
echo.
echo                                                                                   CmdOS
echo.
echo.
echo                                                                         ▓▓▓▓▓▓░░░░░░░░░░░░░░
ping -n 2 localhost >nul
cls
echo.
echo.
echo.
echo                                                                                   CmdOS
echo.
echo.
echo                                                                         ▓▓▓▓▓▓▓▓▓▓▓▓░░░░░░░░
ping -n 2 localhost >nul
cls 
echo.
echo.
echo.
echo                                                                                   CmdOS
echo.
echo.
echo                                                                         ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓░░░░
ping -n 2 localhost >nul
cls
echo.
echo.
echo.
echo                                                                                   CmdOS
echo.
echo.
echo                                                                         ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
ping -n 2 localhost >nul
cd os
cd personal
if exist password.txt goto passinput
cd..
cd..
goto main


:passinput
cls
echo Enter the password you created to access CmdOS.
set /p passi=
set /p passcheck=<password.txt
if %passi% == %passcheck% goto passmain
echo Incorrect password. Press any key to try again.
cd..
cd..
pause >nul
goto passinput


:passmain
cd..
cd..
goto main

:main
cls
cd os
cd color
set /p interface=<color.txt
color %interface%
cd..
cd..
echo What would you like to do?
cmdmenusel F00F "Calculator" "Settings" "Games" "Documents"
if %ERRORLEVEL% == 1 goto calculator
if %ERRORLEVEL% == 2 goto settings
if %ERRORLEVEL% == 3 goto games
if %ERRORLEVEL% == 4 goto documents

:documents
cls
echo Are you sure you want to enter Documents? This
echo feature is in development and may be unstable!
cmdmenusel F00F "Yes" "No"
if %ERRORLEVEL% == 2 goto main
cls
echo Pick an option.
cmdmenusel F00F "Create" "View" "Exit"
if %ERRORLEVEL% == 1 goto create
if %ERRORLEVEL% == 2 goto view
if %ERRORLEVEL% == 3 goto main

:create
cls
cd os
if not exist document md document & goto create2
cd document
echo Name of the document:
set /p document=
cls
echo What would you like to type in the document?
set /p document1=
echo %document1% >> %document%.txt
echo Saved.
echo.
echo NOTICE: You can't view the document until you restart CmdOS.
echo.
echo Press any key to go options
pause >nul
goto documents

:create2
cd..
copy cmdmenusel.exe os
cd os
copy cmdmenusel.exe document
goto create

:view
cd os
cd document
echo Type the name of your document without the extention.
dir -s
set /p view=
if not exist %view%.txt goto error2
set /p view1=<%view%.txt
cls
echo Contents of %view%.txt
echo.
echo %view1%
echo.
echo Press any key to go back to options.
pause >nul
goto documents

:error2
echo An error has occured in opening your document.
echo.
echo Error Code 003.
echo.
echo The system could not find /os/document/%view%.
ping -n 5 localhost >nul
goto documents

:error
echo An error has occured in opening the desktop.
echo.
echo Error Code 002.
echo.
echo The system could not find cmdmenusel.exe.
timeout /t 30
echo Restarting...
ping -n 2 localhost >nul
goto startup


:calculator
cls
echo Welcome to the calculator! Enter your equation.
echo.
echo CHART: "+": addition. "-": subtraction. "*": multiplication. "/": division.
echo.
echo You could also type "exit" to leave.
set /p expression= Equation: 
if %expression% == exit goto main
set /a ans=%expression%
echo.
echo %ans%
echo.
echo Press any key to clear.
pause >nul
goto calculator



:settings
cls
echo Settings
cmdmenusel F00F "Shutdown" "Restart" "Password" "Exit"
if %ERRORLEVEL% == 1 goto shutdown
if %ERRORLEVEL% == 2 goto restart
if %ERRORLEVEL% == 3 goto passwordsettings
if %ERRORLEVEL% == 4 goto main


:passwordsettings
cls
echo Password Settings
echo.
cmdmenusel F00F "Delete password" "Change password or add password" "Exit"
if %ERRORLEVEL% == 1 goto deletepass
if %ERRORLEVEL% == 2 goto changepass
if %ERRORLEVEL% == 3 goto settingsg

:settingsg
goto settings

:deletepass
cls
echo Are you sure?
cmdmenusel F00F "Yes" No"
if %ERRORLEVEL% == 2 goto passwordsettingsg
echo Deleting...
ping -n 2 localhost >nul
cd os
cd personal
del password.txt
cd..
cd..
echo Done!
echo Press any key to go to Password settings.
pause >nul
goto passwordsettings


:passwordsettingsg
goto passwordsettings




:changepass
cls
echo What would you like your new password to be?
set /p newpass=
cd os
cd personal
if exist password.txt del password.txt
echo %newpass% >> password.txt
echo Done!
echo Press any key to go to Password settings.
pause >nul
cd..
cd..
goto passwordsettings









:shutdown
color 0F
cls
echo.
echo.
echo.
echo                                                                                   CmdOS
echo.
echo.
echo                                                                         ░░░░░░░░░░░░░░░░░░░░
ping -n 2 localhost >nul
cls
echo.
echo.
echo.
echo                                                                                   CmdOS
echo.
echo.
echo                                                                         ▓░░░░░░░░░░░░░░░░░░░
cls
echo.
echo.
echo.
echo                                                                                   CmdOS
echo.
echo.
echo                                                                         ▓▓▓▓▓▓░░░░░░░░░░░░░░
ping -n 2 localhost >nul
cls
echo.
echo.
echo.
echo                                                                                   CmdOS
echo.
echo.
echo                                                                         ▓▓▓▓▓▓▓▓▓▓▓▓░░░░░░░░
ping -n 2 localhost >nul
cls 
echo.
echo.
echo.
echo                                                                                   CmdOS
echo.
echo.
echo                                                                         ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓░░░░
ping -n 2 localhost >nul
cls
echo.
echo.
echo.
echo                                                                                   CmdOS
echo.
echo.
echo                                                                         ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
ping -n 2 localhost >nul
exit

:restart
start CmdOS.bat
exit

:setuperror1
echo CmdOS has encountered an error. The key was not made successfully.
echo CmdOS will now shutdown.
echo Error Code 001
timeout /t 10
exit

:games
cls
echo Pick a game!
echo.
cmdmenusel F00F "Dungeons and Dragons" "Exit"
if %ERRORLEVEL% == 1 goto dungeons
if %ERRORLEVEL% == 2 goto maing

:maing
goto main

:dungeons
cls
echo You're in your home, when a dragon bites off your roof and roars.
echo What do you do?
cmdmenusel F00F "Fight the dragon with your kitchen knife" "Run"
if %ERRORLEVEL% == 1 goto dungeons1
if %ERRORLEVEL% == 2 goto dungeons2


:dungeons1
cls
echo You get the kitchen knife, and stab the dragon. The dragon roars,
echo yet he is not dead. He lets out fire through his mouth and you
echo pass out. 
goto dungeons2b




:dungeons2
cls
echo The dragon keeps up with you and lets out fire through his mouth.
echo You inhale his fiery breath and pass out.
echo.
echo ................................................................
echo.

:dungeons2b
echo You wake up in a hospital, with second degree burns.
echo You see a strange looking nurse examining your body.
echo What do you do?
cmdmenusel F00F "Punch her" "Stay calm"
if %ERRORLEVEL% == 1 goto dungeons3
if %ERRORLEVEL% == 2 goto dungeons4



:dungeons4
cls
echo You stay calm and overtime, the second degree burns heal.
echo You win!
cmdmenusel F00F "Play again" "Exit"
if %ERRORLEVEL% == 1 goto dungeons
if %ERRORLEVEL% == 1 goto games




:dungeons3
cls
echo She calls the police and you get arrested for assult.
echo Game Over!
cmdmenusel F00F "Play again" "Exit"
if %ERRORLEVEL% == 1 goto dungeons
if %ERRORLEVEL% == 1 goto games