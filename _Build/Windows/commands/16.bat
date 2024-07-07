cd Builds
if exist 16 (
    cd 16
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-16
    git pull origin team-16
) else (
    git clone --no-checkout --branch team-16 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 16
    cd 16
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-16
)