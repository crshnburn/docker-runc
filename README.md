## docker-runc

A Docker container for building the [opencontainers/runc](https://github.com/opencontainers/runc) tool.

### Building

1. Clone the repository
```
git clone https://github.com/opencontainers/runc
```
2. Copy the Dockerfile into the repository directory
3. Build the container
```
docker build -t runc .
```

### Using the container

Run the container to test out the version of runc you just built
```
docker run --rm -it --privileged -v /sys/fs/cgroup:/sys/fs/cgroup runc bash
```
