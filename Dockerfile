FROM alpine:3.13

ENV LOCAL localhost

RUN apk update
RUN apk add openssh

RUN mkdir /ssh/

CMD cp /mnt/ssh/key /ssh/key; chmod 0600 /ssh/key; ssh -o ServerAliveInterval=60 -o ExitOnForwardFailure=yes -o StrictHostKeyChecking=no -i /ssh/key -N -R $REMOTE_PORT:$LOCAL:$LOCAL_PORT $USER@$REMOTE
