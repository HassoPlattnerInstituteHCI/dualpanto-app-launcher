cd Builds
if exist 24 (
    cd 24
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-24
    git pull origin team-24
) else (
    git clone --no-checkout --branch team-24 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 24
    cd 24
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-24
)