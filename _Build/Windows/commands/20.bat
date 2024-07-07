cd Builds
if exist 20 (
    cd 20
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-20
    git pull origin team-20
) else (
    git clone --no-checkout --branch team-20 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 20
    cd 20
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-20
)