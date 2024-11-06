export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# for Brew
export PATH="/usr/local/bin:$PATH"

# Hides the default login message
export BASH_SILENCE_DEPRECATION_WARNING=1

# Source .bashrc if it exists
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

echo "Welcome, $USER! Get some coding work done @ $(hostname)."

