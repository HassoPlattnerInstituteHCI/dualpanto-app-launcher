cd Builds
if exist 1 (
    cd 1
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-01
    git pull origin team-01
) else (
    git clone --no-checkout --branch team-01 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 1
    cd 1
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-01
)