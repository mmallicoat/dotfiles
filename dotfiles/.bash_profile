# By default for ls, use colors and decorations for directories, exectuables, etc.
# Also, output to a single column
alias ls="ls -GF"

# Add Scripts folder to PATH variable
# PATH=$PATH:$HOME/Code/Scripts
# export PATH

# Set custom bash prompt
PS1="\e[0;32m\w\\e[m\n$ "

# Add some local bins?
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Python paths (these are mucked up)

# Add Python bin to path
# PATH=$PATH:$HOME/Library/Python/2.7/bin
# export PATH
