# better-bash-reverse-history
A better bash-history reverse-i-search made for my day-to-day use.
Have fun with it

![better-search-history.png](screenshots/screen-better-search-history.png)

# Requirements
## python
You will need a python-version.
Should work with most python-versions. Be sure to change the shebang in inject.py
but is only actively tested with python2.7 and python3.9.

## fuzzy-finder
Source: https://github.com/junegunn/fzf
```bash
sudo apt-get install fzf
```

# Installation 
Be sure to check the better-history.sh file because it will override your
reverse-i-search and some other history-related settings

## How to test if it suits you
```bash
cd better-bash-reverse-history
mkdir -p ~/bin
cp better-history.sh ~/bin
cp inject.py ~/bin
chmod +x ~/bin/inject.py
source ~/bin/better-history.sh
```

## How to implement it permanently
```bash
echo 'source ~/bin/better-history.sh' >> ~/.bashrc
```

## How to remove it
```bash
rm ~/bin/better-history.sh
rm ~/bin/inject.py
```

# Recommended usage
## bashrc-settings
in [history-bashrc.sh](history-bashrc.sh) are some good settings for your bashrc described

# Conclusion
If you like it just stick around and check for any "improvements"
