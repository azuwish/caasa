#!/bin/bash
# caasa
# Schedule Attendant and Sound assignments

pushd `dirname $0`

## Mac OS X Setup
echo "Installing Homebrew"
B=`which brew`
if [ "$B" = '' ];
then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "  Homebrew already installed."
fi

echo "Installin rbenv"
B=`which rbenv`
if [ "$B" = '' ];
then
  brew update
  brew install rbenv
  brew upgrade rbenv ruby-build
  rbenv init >> ~/.bash_profile
else
  echo "  Rbenv already installed."
fi

echo "Installing ruby"
B=`which rbenv`
if [ "$B" = '' ];
then
  rbenv install 2.3.1
  gem install bundler --no-rdoc --no-ri
  rbenv local 2.3.1
else
  echo "  Ruby already installed."
fi

echo "Installing rails"
B=`which rails`
if [ "$B" = '' ];
then
  gem install rails
else
  echo "  Ruby already installed."
fi

popd
