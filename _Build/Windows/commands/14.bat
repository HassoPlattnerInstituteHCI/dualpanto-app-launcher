cd Builds
if exist 14 (
    cd 14
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-14
    git pull origin team-14
) else (
    git clone --no-checkout --branch team-14 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 14
    cd 14
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-14
)