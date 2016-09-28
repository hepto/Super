FROM debian

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs

RUN npm install -g cordova ionic
RUN cordova telemetry off

EXPOSE 8000 35729

CMD ["ionic","serve","-b","-a","-p","8000"]

WORKDIR /project