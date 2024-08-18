FROM python:3.12.5-slim-bookworm
WORKDIR /usr/src/djangoapp
COPY ./src-django .
RUN bash install.sh
EXPOSE 8000
CMD ["bash", "run.sh"]