# SSH-Reverse-Proxy
This docker image is a simple SSH-Reverse-Proxy/Tunnel that can be used to expose private servers/a local machine.

## Environment-Variables
* 'REMOTE': The remote Address of the Server to connect to
* 'REMOTE_PORT': The Remote Port to expose/forward
* 'LOCAL': The local Address where it should be forwarded to
* 'LOCAL_PORT': The local Port to forward to
* 'USER': The user for authentication with the remote Server

## Mounts
* '/mnt/ssh/key': This is the key that is used to authenticate with the remote server
