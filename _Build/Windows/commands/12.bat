cd Builds
if exist 12 (
    cd 12
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-12
    git pull origin team-12
) else (
    git clone --no-checkout --branch team-12 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 12
    cd 12
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-12
)