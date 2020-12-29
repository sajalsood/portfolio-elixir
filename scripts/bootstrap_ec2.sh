#!/bin/bash

sudo apt-get update -y
sudo apt-get install esl-erlang -y
sudo apt-get install elixir -y
yes | mix local.hex
 wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
. ~/.nvm/nvm.sh
nvm install v13
sudo mix deps.get
sudo mix compile -y
sudo mix release.init
sudo mix.release