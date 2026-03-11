# dockerfile-terminal
Lightweight Terminal Application

## Usage
### First-time usage
Build the image with the below command:
```shell
docker build -t ubuntu-terminal
```

Run the image with:
```shell
docker run -it --name ubuntu ubuntu-terminal
```

Stop the container with:
```shell
exit
```
### After exiting
Start the container again:
```shell
docker start ubuntu
```
Attach the interactive terminal to the terminal window:
```shell
docker attach ubuntu
```

## Version

### 0.0.1 (11 March 2026)
- Created Ubuntu image with basic Python installed.