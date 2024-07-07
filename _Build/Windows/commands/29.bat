cd Builds
if exist 29 (
    cd 29
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-29
    git pull origin team-29
) else (
    git clone --no-checkout --branch team-29 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 29
    cd 29
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-29
)