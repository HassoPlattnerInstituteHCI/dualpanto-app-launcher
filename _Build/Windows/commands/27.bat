cd Builds
if exist 27 (
    cd 27
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-27
    git pull origin team-27
) else (
    git clone --no-checkout --branch team-27 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 27
    cd 27
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-27
)