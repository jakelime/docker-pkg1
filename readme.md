# Basic Flask App

## Quickstart

```shell
python -m venv venv
.\venv\Scripts\activate
python.exe -m pip install --upgrade pip -i https://artifactreg.stengglink.com/repository/pypi-proxy/simple/
pip install -r requirements.txt -i https://artifactreg.stengglink.com/repository/pypi-proxy/simple/

```



```shell
# Docker commands
docker build -t simple-flask-app
docker run  --name "backend-flask" -p 8000:8000 -d c92f7c96a039

```