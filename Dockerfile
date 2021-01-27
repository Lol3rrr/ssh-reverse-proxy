FROM alpine:3.13

ENV LOCAL localhost

RUN apk update
RUN apk add openssh

CMD sudo ssh -o ServerAliveInterval=60 -o ExitOnForwardFailure=yes -o StrictHostKeyChecking=no -i /mnt/ssh/key -N -R $REMOTE_PORT:$LOCAL:$LOCAL_PORT $USER@$REMOTE
