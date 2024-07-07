cd Builds
if exist 2 (
    cd 2
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-02
    git pull origin team-02
) else (
    git clone --no-checkout --branch team-02 https://github.com/HassoPlattnerInstituteHCI/BIS-24-projects.git 2
    cd 2
    git sparse-checkout init --cone
    git sparse-checkout set Build
    git checkout team-02
)