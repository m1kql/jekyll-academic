#!/bin/sh
clear
echo "Starting install..."
git clone https://github.com/yak-fumblepack/jekyll-academic.git
cd jekyll-academic/
read -p "Would you like to delete the git folder? [y/N]" REPLY
if [ "$REPLY" != "y" ]; then
  echo "Keeping git folder"
else
  rm -rf .git
  echo "Folder removed successfully"
fi

rm jekyll-academic.gemspec
rm Gemfile
echo "gem \"jekyll\", \"~> 4.2.0\"\ngem \"jekyll-sitemap\"\ngem \"jekyll-seo-tag\"" >> Gemfile
bundle install
read -p "Would you like to serve the site now? [y/N]" REPLY
if [ "$REPLY" != "y" ]; then
  echo "Have a good day! :)"
else
  bundle exec jekyll serve --watch --livereload
fi