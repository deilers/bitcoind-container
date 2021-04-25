# Bitcoin Core as a Container
(Work In Progress) Docker image and setup scripts for Bitcoin Core (bitcoind).

# Build Instructions:

At the project root, use this command:
``` bash
docker build -t <dockerID>/bitcoind -f Dockerfile_[amd64|pi] .
```

**Important**: Choose the dockerfile that corresponds to the architecture of your host machine. If you must build and deploy to a remote machine, ensure the correct base image is used by appending the digest after the image name in the Dockerfile.