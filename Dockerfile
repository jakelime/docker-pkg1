FROM python3.12-bookworm
WORKDIR /usr/src/app
COPY . .
RUN bash install.sh
EXPOSE 8000
CMD ["bash", "run.sh"]