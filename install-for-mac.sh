#bin/bash

if ! [ -x "$(command -v sbcl)" ]; then
  echo ' sbcl is not installed.' >&2
  echo ' install sbcl starting...'
  brew install sbcl
  sbcl -version
  echo 'install sbcl finished'
fi
git clone https://github.com/easyhaloo/pgloader.git
cd pgloader
make clean && make pgloader
mv ./build/bin/pgloader /usr/local/bin

if [ -x "$(command -v pgloader)" ]; then
  echo "pglpader installed"
else
  echo "pgloader install is error. please check you pgloader install path"
fi
