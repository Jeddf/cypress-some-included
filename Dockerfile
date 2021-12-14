FROM node:14-buster-slim

ENV CI=1
ENTRYPOINT ["cypress", "run"]

RUN apt-get update && \
  apt-get install --no-install-recommends -y \
  libgtk-3-0 \
  libgtk2.0-0 \
  libnotify-dev \
  libgconf-2-4 \
  libgbm-dev \
  libnss3 \
  libxss1 \
  libasound2 \
  libxtst6 \
  xauth \
  xvfb \
  && rm -rf /var/lib/apt/lists/*

RUN npm install -g --unsafe-perm "cypress@8" && cypress verify
