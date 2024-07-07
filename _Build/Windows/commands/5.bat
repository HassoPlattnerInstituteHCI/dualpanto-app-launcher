cd Builds
if exist 5 (
    cd 5
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-05
    git pull origin team-05
) else (
    git clone --no-checkout --branch team-05 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 5
    cd 5
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-05
)