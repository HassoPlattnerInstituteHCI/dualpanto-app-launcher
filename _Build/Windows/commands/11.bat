cd Builds
if exist 11 (
    cd 11
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-11
    git pull origin team-11
) else (
    git clone --no-checkout --branch team-11 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 11
    cd 11
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-11
)