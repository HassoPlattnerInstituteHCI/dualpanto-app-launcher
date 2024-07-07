cd Builds
if exist 7 (
    cd 7
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-07
    git pull origin team-07
) else (
    git clone --no-checkout --branch team-07 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 7
    cd 7
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-07
)