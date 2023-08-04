# Store nullglob state to revert after
nullglobState=$(shopt -p nullglob)
# Enable multiple kube configs
export KUBECONFIG=$HOME/.kube/config
for extra_kubeconfig in $HOME/.kube/clusters/*.{yaml,yml}; do
  # https://kubernetes.io/docs/tasks/access-application-cluster/configure-access-multiple-clusters/#set-the-kubeconfig-environment-variable
  export KUBECONFIG=$KUBECONFIG:$extra_kubeconfig
done
# Revert nullglob state
eval $nullglobState

alias refresh-kubeconfig='source ~/.kube.bashrc'
