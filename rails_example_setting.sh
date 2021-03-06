sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y git build-essential libssl-dev libreadline-dev libsqlite3-dev sqlite3 nodejs tmux

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile
echo 'eval "$(rbenv init -)"' >> ~/.profile
source ~/.profile

rbenv install 2.4.2
rbenv rehash
rbenv global 2.4.2

gem update
gem install bundler

git clone https://github.com/d-akihiro/rails_example.git ~/work/rails_example_sample

cd ~/work/rails_example_sample
bundle install
bin/rake db:migrate
