# dockerfile-terminal
Lightweight Terminal Application

## Usage
### First-time usage
Build the image with the below command:
```shell
docker build -t ubuntu .
```

Run the image with:
```shell
docker run -it ubuntu bash
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

## Initial setups

Run `nvim` command for lazyvim to initialize.

Add git credentials globally with the below:

```bash
git config --global user.name "izzaziii"
git config --global user.email "izzaz76230@gmail.com"
```

Clone the secondbrain repo with the below:
```bash
git clone https://github.com/izzaziii/secondbrain.git
```

## Version

### 0.0.1 (11 March 2026)
- Created Ubuntu image with basic Python installed.