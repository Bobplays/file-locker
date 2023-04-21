@ECHO OFF
title safe-lock ^| %username%
mode 50;60
if EXIST "Control Panel.{ADF0FMGTAD7F453KSD-3AEH-SD7G-7AD8-8324J11239}" goto :main
if NOT EXIST Private goto create
:create
md Private
goto main
:main
cls
echo.
echo.
echo    [40;35m                                     /$$$$$$                  /$$                     /$$      
echo                                        /$$__  $$                ^| $$                    ^| $$      
echo                     /$$$$$$$  /$$$$$$ ^| $$  \__//$$$$$$         ^| $$  /$$$$$$   /$$$$$$$^| $$   /$$
echo                    /$$_____/ ^|____  $$^| $$$$   /$$__  $$ /$$$$$$^| $$ /$$__  $$ /$$_____/^| $$  /$$/
echo                   ^|  $$$$$$   /$$$$$$$^| $$_/  ^| $$$$$$$$^|______/^| $$^| $$  \ $$^| $$      ^| $$$$$$/ 
echo                    \____  $$ /$$__  $$^| $$    ^| $$_____/        ^| $$^| $$  ^| $$^| $$      ^| $$_  $$ 
echo                    /$$$$$$$/^|  $$$$$$$^| $$    ^|  $$$$$$$        ^| $$^|  $$$$$$/^|  $$$$$$$^| $$ \  $$
echo                   ^|_______/  \_______/^|__/     \_______/        ^|__/ \______/  \_______/^|__/  \__/         
echo.
echo v 1.0
echo [40;36m========================================================================================================================
echo                                    [40;35m[[40;37m1[40;35m][40;31mreset folder                     [40;35m[[40;37m2[40;35m][40;31minput password
echo [40;36m========================================================================================================================
set /p test=^>
if not defined password (
goto main
)

if %test%==1 goto reset
if %test%==2 goto chose    
if %test%==code-crack goto crack 
:reset
cls
echo.
echo [40;31m are you sure?
echo.
set /p reset=^>
if not defined password (
goto main
)

if %reset%===yes goto refolder
if %reset%==no goto main

:refolder
cls
echo                  /$$$$$$$                                  /$$     /$$                    
echo                 ^| $$__  $$                                ^| $$    ^|__/                    
echo                 ^| $$  \ $$  /$$$$$$   /$$$$$$$  /$$$$$$  /$$$$$$   /$$ /$$$$$$$   /$$$$$$ 
echo                 ^| $$$$$$$/ /$$__  $$ /$$_____/ /$$__  $$^|_  $$_/  ^| $$^| $$__  $$ /$$__  $$
echo                 ^| $$__  $$^| $$$$$$$$^|  $$$$$$ ^| $$$$$$$$  ^| $$    ^| $$^| $$  \ $$^| $$  \ $$
echo                 ^| $$  \ $$^| $$_____/ \____  $$^| $$_____/  ^| $$ /$$^| $$^| $$  ^| $$^| $$  ^| $$
echo                 ^| $$  ^| $$^|  $$$$$$$ /$$$$$$$/^|  $$$$$$$  ^|  $$$$/^| $$^| $$  ^| $$^|  $$$$$$$
echo                 ^|__/  ^|__/ \_______/^|_______/  \_______/   \___/  ^|__/^|__/  ^|__/ \____  $$
echo                                                                                  /$$  \ $$
echo                                                                                 ^|  $$$$$$/
echo                                                                                  \______/    
echo. 
timeout 3 > NUL
md Private2 
echo [40;37mNew Private created successfully
timeout 1 > NUL
echo dont forget to rename the folder to Private after transferring the files
timeout 3 > NUL
pause

goto END

:input
cls
echo                   /$$$$$$$                                                                      /$$
echo                  ^| $$__  $$                                                                    ^| $$
echo                  ^| $$  \ $$ /$$$$$$   /$$$$$$$ /$$$$$$$ /$$  /$$  /$$  /$$$$$$   /$$$$$$   /$$$$$$$
echo                  ^| $$$$$$$/^|____  $$ /$$_____//$$_____/^| $$ ^| $$ ^| $$ /$$__  $$ /$$__  $$ /$$__  $$
echo                  ^| $$____/  /$$$$$$$^|  $$$$$$^|  $$$$$$ ^| $$ ^| $$ ^| $$^| $$  \ $$^| $$  \__/^| $$  ^| $$
echo                  ^| $$      /$$__  $$ \____  $$\____  $$^| $$ ^| $$ ^| $$^| $$  ^| $$^| $$      ^| $$  ^| $$
echo                  ^| $$     ^|  $$$$$$$ /$$$$$$$//$$$$$$$/^|  $$$$$/$$$$/^|  $$$$$$/^| $$      ^|  $$$$$$$
echo                  ^|__/      \_______/^|_______/^|_______/  \_____/\___/  \______/ ^|__/       \_______/
echo.                                                                                  
echo.
:UNLOCK
echo Enter password to Unlock Your Secure Folder
set /p "pass=>"
if NOT %password%== your_password goto FAIL
attrib -h -s "Control Panel.{ADF0FMGTAD7F453KSD-3AEH-SD7G-7AD8-8324J11239}"
ren "Control Panel.{ADF0FMGTAD7F453KSD-3AEH-SD7G-7AD8-8324J11239}" Private
echo Folder Unlocked successfully
goto End
:FAIL
echo Invalid password


:chose
cls
if EXIST "Control Panel.{ADF0FMGTAD7F453KSD-3AEH-SD7G-7AD8-8324J11239}" goto input
if EXIST "Private" goto lock



:lock
echo      [40;31m                               /$$                     /$$      
echo                                     ^| $$                    ^| $$      
echo                                     ^| $$  /$$$$$$   /$$$$$$$^| $$   /$$
echo                                     ^| $$ /$$__  $$ /$$_____/^| $$  /$$/
echo                                     ^| $$^| $$  \ $$^| $$      ^| $$$$$$/ 
echo                                     ^| $$^| $$  ^| $$^| $$      ^| $$_  $$ 
echo                                     ^| $$^|  $$$$$$/^|  $$$$$$$^| $$ \  $$
echo                                     ^|__/ \______/  \_______/^|__/  \__/
echo.
echo [40;37mAre you sure to lock this folder? (Y/N)
set/p "lock=>"
if %lock%==Y goto LOCK
if %lock%==y goto LOCK
if %lock%==n goto main
if %lock%==N goto main
echo Invalid choice.
goto lock
:LOCK
ren Private "Control Panel.{ADF0FMGTAD7F453KSD-3AEH-SD7G-7AD8-8324J11239}"
attrib +h +s "Control Panel.{ADF0FMGTAD7F453KSD-3AEH-SD7G-7AD8-8324J11239}"
echo Folder locked
goto End

:crack
echo [40;31mcracked
timeout 1 > NUL
echo collecting info
timeout 5 > NUL
echo info
echo password: your_password
echo hiden files: Control Panel.{ADF0FMGTAD7F453KSD-3AEH-SD7G-7AD8-8324J11239}
pause


:End
