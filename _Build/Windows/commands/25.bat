cd Builds
if exist 25 (
    cd 25
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-25
    git pull origin team-25
) else (
    git clone --no-checkout --branch team-25 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 25
    cd 25
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-25
)