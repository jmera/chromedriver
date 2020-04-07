FROM ubuntu:bionic

LABEL description="Chromedriver Docker container for linux" version="71"
RUN apt-get update && apt-get install chromium-chromedriver --yes
RUN useradd driver --shell /bin/bash --create-home
USER driver

ENTRYPOINT /usr/lib/chromium-browser/chromedriver --whitelisted-ips --verbose --log-path=/home/driver/chromedriver.log
