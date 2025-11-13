source ~/zsh.d/aliases.zsh
source ~/zsh.d/functions.zsh

#AWSume alias to source the AWSume script
alias awsume="source awsume"
alias oneLogin="totp < <(echo "XC5O6L6C7LU2D7GW6YZOR5A7T7DIOPJA") | pbcopy"
alias ssv="/usr/local/bin/ssv.sh awsjump"
#Auto-Complete function for AWSume
fpath=(~/.awsume/zsh-autocomplete/ $fpath)
