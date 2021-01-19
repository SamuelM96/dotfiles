eval `keychain --quiet --agents ssh --eval id_rsa`
eval `keychain --quiet --agents ssh --eval id_ed25519`
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
