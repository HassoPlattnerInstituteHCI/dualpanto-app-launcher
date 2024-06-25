@REM set "targetDir=C:\Users\nick\Documents\Uni\SoSe24\Projektseminar\Project\Test_2"
@REM cd /d "%targetDir"
@REM cd Builds
cd %~dp0\..\..\..\Test_2\TestProject
if exist Automation_test (
    cd Automation_test
    git sparse-checkout init --cone
    git sparse-checkout set Assets
    git checkout testing
    git pull origin testing
) else (
    git clone --no-checkout --branch testing https://github.com/genickbruch/Automation_test.git
    cd Automation_test
    git sparse-checkout init --cone
    git sparse-checkout set Assets
    git checkout testing
)