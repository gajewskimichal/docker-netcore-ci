#Docker image for CI of .NET Core code to Amazon Lambda

FROM microsoft/aspnetcore-build:2.0  

RUN apt-get -y update      
RUN apt-get -y install zip
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -b ~/bin/aws
RUN npm install npm@latest -g
RUN npm cache clean -f
RUN npm install -g n
RUN n stable