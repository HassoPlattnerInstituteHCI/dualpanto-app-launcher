cd Builds
if exist 17 (
    cd 17
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-17
    git pull origin team-17
) else (
    git clone --no-checkout --branch team-17 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 17
    cd 17
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-17
)