tools: brew rustup
shell: ohmyzsh p10k syntax	
utils: direnv lsd thefuck asdf tmux mosh ripgrep bat gsed openssl
asdf-plugins: asdf-python asdf-node

# Tools
brew:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

rustup:
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Shell
ohmyzsh:
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

p10k:
	arch -arm64 brew install p10k

syntax:
	arch -arm64 brew install zsh-syntax-highlighting

# Utils
direnv: 
	arch -arm64 brew install direnv

lsd: 
	arch -arm64 brew install lsd

thefuck:
	arch -arm64 brew install thefuck

asdf:
	arch -arm64 brew install asdf

tmux:
	arch -arm64 brew install tmux

mosh:
	arch -arm64 brew install mosh

gsed:
	arch -arm64 brew install gsed

ripgrep:
	arch -arm64 brew install ripgrep

bat: 
	arch -arm64 brew install bat

openssl:
	arch -arm64 brew install openssl
# asdf

asdf-python:
	asdf plugin-add python

asdf-node:
	asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git 




