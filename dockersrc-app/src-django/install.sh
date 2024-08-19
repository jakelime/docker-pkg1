#!/bin/bash

url="https://artifactreg.stengglink.com/"
url_nexus_pypi="https://artifactreg.stengglink.com/repository/pypi-proxy/simple/"


check_nexus_connection() {
    response=$(curl -s -D - "$url" -o /dev/null)
    status_code=$(echo "$response" | grep HTTP | awk '{print $2}')    
    echo "checked $url -> status_code=$status_code"
}

pip_install_stengg() {
    python3 -m venv venv
    python -m pip install --upgrade pip -i $url_nexus_pypi
    pip install -r requirements.txt -i $url_nexus_pypi
}

pip_install() {
    python3 -m venv venv
    python -m pip install --upgrade pip
    pip install -r requirements.txt
}


if [[ $status_code == 200 ]]; then
    pip_install_stengg
else
    pip_install
fi