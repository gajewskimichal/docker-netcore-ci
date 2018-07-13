#Docker image for CI of .NET Core code to Amazon Lambda

FROM microsoft/dotnet:2.1-sdk 

RUN apt-get -y update      
RUN apt-get -y install zip
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -b ~/bin/aws
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash 
RUN apt-get install -y nodejs

RUN npm -v
RUN node -v
RUN npm install -g @angular/cli
RUN ng version