# yay another package manager

# Bootstrap krew - it then self-hosts
if ! which kubectl-krew
then
    (
      set -x; cd "$(mktemp -d)" &&
      curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/krew.{tar.gz,yaml}" &&
      tar zxvf krew.tar.gz &&
      KREW=./krew-"$(uname | tr '[:upper:]' '[:lower:]')_amd64" &&
      "$KREW" install --manifest=krew.yaml --archive=krew.tar.gz &&
      "$KREW" update
    )
fi

kubectl krew upgrade

kubectl krew install tap
kubectl krew install sniff
# kubectl krew install debug - use `kubectl alpha debug` instead
kubectl krew install tree
