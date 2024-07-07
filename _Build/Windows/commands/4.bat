cd Builds
if exist 4 (
    cd 4
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-04
    git pull origin team-04
) else (
    git clone --no-checkout --branch team-04 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 4
    cd 4
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-04
)