cd Builds
if exist 28 (
    cd 28
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-28
    git pull origin team-28
) else (
    git clone --no-checkout --branch team-28 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 28
    cd 28
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-28
)