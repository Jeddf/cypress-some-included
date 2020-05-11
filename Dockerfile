FROM cypress/base:latest

ENV CI=1
ENTRYPOINT ["cypress", "run"]

RUN npm install -g "cypress@>=4" && cypress verify
