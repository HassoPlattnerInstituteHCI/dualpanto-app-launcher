cd Builds
if exist 21 (
    cd 21
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-21
    git pull origin team-21
) else (
    git clone --no-checkout --branch team-21 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 21
    cd 21
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-21
)