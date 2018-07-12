#Docker image for CI of .NET Core code to Amazon Lambda

FROM microsoft/dotnet:2.1-sdk 

RUN apt-get -y update      
RUN apt-get -y install zip
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -b ~/bin/aws
RUN npm i -g npm3 && npm3 -g uninstall npm
RUN npm3 i -g npm@latest
RUN npm install -g n
RUN n stable
RUN npm -v
RUN node -v
RUN npm install -g @angular/cli
RUN ng version