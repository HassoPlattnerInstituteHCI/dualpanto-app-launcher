cd Builds
if exist 30 (
    cd 30
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-30
    git pull origin team-30
) else (
    git clone --no-checkout --branch team-30 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 30
    cd 30
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-30
)