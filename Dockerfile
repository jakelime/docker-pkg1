FROM python:3.12.5-slim-bookworm
WORKDIR /usr/src/app
COPY . .
RUN bash install.sh
EXPOSE 8000
CMD ["bash", "run.sh"]