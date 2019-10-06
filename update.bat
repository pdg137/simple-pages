bash.exe -c 'gem install bundler'
bash.exe -c 'gem uninstall eventmachine --force'
bash.exe -c 'gem install eventmachine --platform ruby'
bash.exe -c 'bundle update'
@pause
