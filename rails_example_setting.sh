sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y git build-essential libssl-dev libreadline-dev libsqlite3-dev nodejs tmux

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile
echo 'eval "$(rbenv init -)"' >> ~/.profile
source ~/.profile

rbenv install 2.4.1
rbenv rehash
rbenv global 2.4.1

gem update
gem install bundler

git clone https://github.com/d-akihiro/rails_example.git ~/rails_example

cd ~/rails_example
bundle install
