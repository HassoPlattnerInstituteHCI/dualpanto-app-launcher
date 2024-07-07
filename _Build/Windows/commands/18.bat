cd Builds
if exist 18 (
    cd 18
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-18
    git pull origin team-18
) else (
    git clone --no-checkout --branch team-18 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 18
    cd 18
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-18
)