cd Builds
if exist 15 (
    cd 15
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-15
    git pull origin team-15
) else (
    git clone --no-checkout --branch team-15 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 15
    cd 15
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-15
)