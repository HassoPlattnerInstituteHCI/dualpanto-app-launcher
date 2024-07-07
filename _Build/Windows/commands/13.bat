cd Builds
if exist 13 (
    cd 13
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-13
    git pull origin team-13
) else (
    git clone --no-checkout --branch team-13 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 13
    cd 13
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-13
)