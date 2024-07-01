@REM set "targetDir=C:\Users\nick\Documents\Uni\SoSe24\Projektseminar\Project\Test_2"
@REM cd /d "%targetDir"
cd Builds
@REM cd %~dp0\..\..\..\Test_2\TestProject
if exist sumo (
    cd platzhalter
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout testing
    git pull origin testing
) else (
    git clone --no-checkout --branch testing https://github.com/genickbruch/Automation_test.git sumo
    cd sumo
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout testing
)