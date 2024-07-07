cd Builds
if exist 22 (
    cd 22
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-22
    git pull origin team-22
) else (
    git clone --no-checkout --branch team-22 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 22
    cd 22
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-22
)