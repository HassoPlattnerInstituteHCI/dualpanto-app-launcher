cd Builds
if exist 9 (
    cd 9
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-09
    git pull origin team-09
) else (
    git clone --no-checkout --branch team-09 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 9
    cd 9
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-09
)