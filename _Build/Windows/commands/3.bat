cd Builds
if exist 3 (
    cd 3
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-03
    git pull origin team-03
) else (
    git clone --no-checkout --branch team-03 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 3
    cd 3
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-03
)