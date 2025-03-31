# Update PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]
then
    source "$HOME/google-cloud-sdk/path.bash.inc"
fi

# Enable shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.bash.inc" ]
then
    source "$HOME/google-cloud-sdk/completion.bash.inc"
fi
