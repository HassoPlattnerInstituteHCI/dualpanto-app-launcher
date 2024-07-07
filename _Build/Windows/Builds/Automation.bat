@echo off
setlocal enabledelayedexpansion

cd Builds
set items= 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29

for %%i in (%items%) do (
    @REM Only works for teams <10 rn
    set "team=team-0%%i"
    set "folder=%%i"
    @REM echo !team!
    @REM echo !folder!
   if exist !folder! (
    cd !folder!
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout !team!
    git pull origin !team!
    ) else (
    git clone --no-checkout --branch !team! https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git !folder!
    cd !folder!
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout !team!
    ) 
)

endlocal
