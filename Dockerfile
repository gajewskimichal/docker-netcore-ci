#Docker image for CI of .NET Core code to Amazon Lambda

FROM microsoft/dotnet:2.1-sdk 

RUN apt-get -y update      
RUN apt-get -y install zip
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -b ~/bin/aws
RUN apt-get install -f build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev
RUN ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
RUN export PATH="$HOME/.linuxbrew/bin:$PATH"
RUN export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
RUN export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
RUN brew install node
RUN npm -v
RUN node -v
RUN npm install -g @angular/cli
RUN ng version