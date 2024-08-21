FROM python:3.12.5-slim-bookworm
WORKDIR /usr/src/djangoapp
COPY ./src-django .
RUN apt-get update && apt-get install -y \
curl
RUN bash install.sh
CMD ["bash", "run.sh"]