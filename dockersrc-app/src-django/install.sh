#!/bin/bash

url="https://artifactreg.stengglink.com/"
url_nexus_pypi="https://artifactreg.stengglink.com/repository/pypi-proxy/simple/"


check_nexus_connection() {
    # Check if Nexus connected (i.e. N1 environment or N2 environment)
    response=$(curl -s -D - "$url" -o /dev/null)
    status_code=$(echo "$response" | grep HTTP | awk '{print $2}')    
    return status_code
}

pip_install_proxied() {
    # Runs pip install using proxy
    echo "running pip install with proxy..."
    python3 -m venv venv
    python -m pip install --upgrade pip -i $1
    pip install -r requirements.txt -i $1
}

pip_install() {
    # Runs pip install
    echo "running pip install from pypi..."
    # python3 -m venv venv
    # python -m pip install --upgrade pip
    # pip install -r requirements.txt
}

status_code=$(check_nexus_connection)
if [[ $status_code == 200 ]]; then
    pip_install_proxied $url_nexus_pypi
else
    pip_install
fi