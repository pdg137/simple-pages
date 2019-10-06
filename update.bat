bash.exe -c 'gem install bundler'
bash.exe -c 'bundle update'
bash.exe -c 'gem uninstall eventmachine --force'
bash.exe -c 'gem install eventmachine --platform ruby'
@pause
