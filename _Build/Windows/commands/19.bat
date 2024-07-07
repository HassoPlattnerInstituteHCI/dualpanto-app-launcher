cd Builds
if exist 19 (
    cd 19
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-19
    git pull origin team-19
) else (
    git clone --no-checkout --branch team-19 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 19
    cd 19
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-19
)