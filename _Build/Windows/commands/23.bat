cd Builds
if exist 23 (
    cd 23
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-23
    git pull origin team-23
) else (
    git clone --no-checkout --branch team-23 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 23
    cd 23
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-23
)