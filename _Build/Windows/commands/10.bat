cd Builds
if exist 10 (
    cd 10
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-10
    git pull origin team-10
) else (
    git clone --no-checkout --branch team-10 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 10
    cd 10
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-10
)