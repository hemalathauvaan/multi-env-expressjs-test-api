# entrypoint.sh
#!/bin/bash

#echo "export PATH=$PATH:/usr/local/git/bin" >> ~/.bashrc
#source ~/.bashrc
#dos2unix /opt/app-root/src/.kube/config

set -e

function main() {
    if [[ $# -eq 0 ]]; then
        printf "\nHello, World!\n"
    else
        printf "\nHello, %s!\n" "${1}"
    fi
}

main "$@"