cd Builds
if exist 8 (
    cd 8
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-08
    git pull origin team-08
) else (
    git clone --no-checkout --branch team-08 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 8
    cd 8
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-08
)