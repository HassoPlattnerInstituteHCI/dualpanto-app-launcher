cd Builds
if exist 26 (
    cd 26
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-26
    git pull origin team-26
) else (
    git clone --no-checkout --branch team-26 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 26
    cd 26
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-26
)