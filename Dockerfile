FROM alpine

RUN apk add npm && \
    npm i -g http-server && \
    npm i -g git && \
    git clone https://github.com/Elvolver/app-for-dockerhub.git         

VOLUME /home/server

WORKDIR /home/server

COPY ./ /home/server/

EXPOSE 8080

CMD http-server
