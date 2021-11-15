#!/bin/bash

setup_scripts=(
    ./install_basic_tools.sh
    ./install_oh_my_zsh.sh
    ./install_oh_my_zsh_plugins.sh
    ./restore_vim.sh
)

export_setup() {
    echo "echo Setup $1..." >> quick_setup.sh
    cat $1 >> quick_setup.sh
    echo "" >> quick_setup.sh

    echo -e 'if [ $? ]; then echo "Succeed"; else echo "Failed" && exit 1; fi\n' >> quick_setup.sh
}

:> quick_setup.sh

echo -e "#!/bin/bash\n" >> quick_setup.sh
echo -e "sudo apt update\n" >> quick_setup.sh

for script in ${setup_scripts[@]}; do
    export_setup $script
done