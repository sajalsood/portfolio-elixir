#!/bin/bash

sudo apt-get update -y
sudo wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb
sudo apt-get update
sudo apt-get install esl-erlang -y
sudo apt-get install elixir -y
cd /var/www/portfolio/
yes | mix local.hex
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
. ~/.nvm/nvm.sh
nvm install v13
sudo mix deps.get
yes yes | sudo mix compile
sudo mix release.init
sudo mix release