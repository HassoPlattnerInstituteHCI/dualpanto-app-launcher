cd Builds
if exist 6 (
    cd 6
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-06
    git pull origin team-06
) else (
    git clone --no-checkout --branch team-06 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 6
    cd 6
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-06
)