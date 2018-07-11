#Docker image for CI of .NET Core code to Amazon Lambda

FROM microsoft/aspnetcore-build:2.0  

RUN apt-get -y update      
RUN apt-get -y install zip
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -b ~/bin/aws
RUN npm i -g npm3 && npm3 -g uninstall npm
RUN npm3 i -g npm@latest
RUN npm -v
RUN npm install -g n
RUN n stable