#!/bin/bash --login

echo "Xcode"
echo "========================"
echo "xcodebuild version"
xcodebuild -version
echo "xcode-select path"
xcode-select -p

echo 
echo "Homebrew"
echo "========================"
echo "homebrew installed?"
command -v /usr/local/bin/brew >/dev/null 2>&1 && {
  echo "YES"
} 
command -v /usr/local/bin/brew >/dev/null 2>&1 || { 
  echo "NO" 
}

echo
echo "Ruby"
echo "========================"
echo "Ruby version:"
ruby -v
echo "Install location"
which ruby
echo "RVM installed?"
if [[ -d ~/.rvm || -d /usr/local/rvm ]]; then
  echo "YES"
  test -d ~/.rvm && {
    echo "local install"
  }
  test -d ~/.rvm || { 
    echo "multi user install"
  }
fi
echo "RVM loaded?"
command -v rvm >/dev/null 2>&1 && {
  echo "YES"
}
command -v rvm >/dev/null 2>&1 || {
  echo "NO"
}

echo 
echo "Carthage"
echo "========================"
echo "Carthage installed?"
command -v carthage >/dev/null 2>&1 && {
  echo "YES"
  echo "Install location:"
  which carthage
  echo "version: "
  carthage version
}
command -v carthage >/dev/null 2>&1 || {
  echo "NO"
}

echo 
echo "Cocoapods"
echo "========================"
echo "Cocoapods installed?"
command -v pod >/dev/null 2>&1 && {
  echo "YES"
  echo "Cocoapods install location: "
  which pod
  echo "version: "
  gem list | grep -i cocoapods
} 
command -v pod >/dev/null 2>&1 || {
  echo "NO"
}

