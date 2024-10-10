# Store nullglob state to revert after
nullglobState=$(shopt -p nullglob)
# Enable multiple kube configs
KUBECONFIG=""
for extra_kubeconfig in $HOME/.kube/clusters/*.{yaml,yml}; do
  # https://kubernetes.io/docs/tasks/access-application-cluster/configure-access-multiple-clusters/#set-the-kubeconfig-environment-variable
  KUBECONFIG=$KUBECONFIG:$extra_kubeconfig
done
export KUBECONFIG=$KUBECONFIG:$HOME/.kube/config
# Revert nullglob state
eval $nullglobState

alias refresh-kubeconfig='source ~/.kube.bashrc'
