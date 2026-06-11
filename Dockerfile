FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/GMT-8

# Install everything in one layer + clean up
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        procps \
        curl \
        file \
        git \
        ca-certificates \
        tzdata \
    && ln -fs /usr/share/zoneinfo/$TZ /etc/localtime \
    && dpkg-reconfigure --frontend noninteractive tzdata \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install Homebrew + packages in ONE layer
RUN NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" && \
    brew install neovim lazygit tmux zoxide fd markdownlint-cli2 && \
    brew cleanup --prune=all && \
    rm -rf /home/linuxbrew/.cache/*

# Configure shell
RUN echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /root/.bashrc && \
    echo 'eval "$(zoxide init bash)"' >> /root/.bashrc

# Neovim config (minimal clone)
RUN git clone --depth=1 https://github.com/LazyVim/starter /root/.config/nvim && \
    rm -rf /root/.config/nvim/.git

ENV PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"

CMD ["/bin/bash"]
