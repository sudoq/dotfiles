alias rf='view'
alias ph='pushd'
alias pp='popd'
alias bk='cd -'
alias remake='make clean && make'
alias htmlgocov='go test -coverprofile=tmp.out && go tool cover -html=_gotest_tmp.out && rm _gotest_tmp.out'
alias gst="git status"
alias gcm="git commit -m"
alias glog="git log --oneline --abbrev-commit --all --graph --decorate --color"
alias gap="git add -p"
alias gcop="git checkout -p"
alias gps="git push --set-upstream origin \`git rev-parse --abbrev-ref HEAD\`"
alias gpp="git please"
alias mk="make"
alias gofmtrec="go fmt ./..."
alias dclean="docker rm \`docker ps -aq\`"
alias dcleanimg="docker rmi \`docker images -q\`"
alias macker="eval \`docker-machine env\` && docker-machine start && eval \`docker-machine env\`"
alias doc="docker-compose"
alias tux="ANSIBLE_COW_SELECTION=tux ansible-playbook"
alias vbm="VBoxManage"
alias pt="ping 8.8.8.8"
alias v="vim"
alias bootvms='VBoxManage startvm $(VBoxManage list vms | awk "{print $1}" | tr "\"" " ") --type headless'
alias xssh='ssh -o "UserKnownHostsFile /dev/null" -o "LogLevel ERROR" -o IdentitiesOnly=yes'
alias xsftp='sftp -o "UserKnownHostsFile /dev/null" -o "LogLevel ERROR" -o IdentitiesOnly=yes'
alias xscp='scp -o "UserKnownHostsFile /dev/null" -o "LogLevel ERROR" -o IdentitiesOnly=yes'
alias pyclean='find . | grep -E "(__pycache__|\.pyc|\.pyo$)" | xargs rm -rf'
alias fenv="source \`find . -name activate -maxdepth 3\`"
alias pycheck='python -m flake8 && python -m isort && python -m pytest'
alias pi='python -m pip install -r requirements.txt'
alias pc='pip-compile'
alias cpwd='pwd | pbcopy'
alias ppwd="cd \`pbpaste\`"
alias mattock="gource --seconds-per-day 0.1 --auto-skip-seconds 0.1 --file-idle-time 0 -1280x720 --hide dirnames,filenames"
alias tf="terraform"
alias prw="gh pr create --web"

# Kubernetes
alias k='kubectl'
alias kt='kubetail'
alias kaf='kubectl apply -f'
alias kdf='kubectl delete -f'
alias kls='kubectl get all'
alias kc='kubectx'
#alias kcv='kubectl config view'
#alias kce='kubectl exec -it'
alias kcl='kubectl logs -f'
#alias kcg='kubectl get'
#alias kcgp='kubectl get pod'
#alias kcgd='kubectl get deployment'
#alias kcdsc='kubectl describe'
#alias kcdel='kubectl delete'
#alias kcpf='kubectl port-forward'
alias kst='kustomize'
alias sk='skaffold'
alias skr='skaffold run -l skaffold.dev/run-id=static -l app.kubernetes.io/managed-by=skaffold --status-check=false'
alias skd='skaffold -p dev'
alias ski='skaffold -p integration'
alias sks='skaffold -p sandbox'
alias skp='skaffold -p prod'

## Use envsubst to do simple variable replacement in for example ingress files.
#alias envsubst='/usr/local/Cellar/gettext/0.19.8.1/bin/envsubst'
function kcaev() {
  envsubst < $1 | kubectl apply -f -
}
## auto completion
#source <(kubectl completion zsh) # (or bash if that is your poison)

function mk_start() {
	minikube start --disk-size 40g --memory 4000
}

alias apld='time ansible-playbook --vault-password-file=~/.vaultsecrets/development -i environments/development/inventory'
alias apldv='time ansible-playbook --vault-password-file=~/.vaultsecrets/development -i environments/development/inventory -vvvv'
alias apli='time ansible-playbook --vault-password-file=~/.vaultsecrets/integration -i environments/integration/inventory'
alias apliv='time ansible-playbook --vault-password-file=~/.vaultsecrets/integration -i environments/integration/inventory -vvvv'
alias aplp='time ansible-playbook --ask-vault-pass -i environments/production/inventory'
alias aplpv='time ansible-playbook --ask-vault-pass -i environments/production/inventory -vvvv'


# Init aliases
alias cdev='color blue'
alias cops='color orange'
alias cauto='color yellow'
alias ctool='color yellow'
alias ctest='color green'
alias cprod='color red'

function lb() {
    vim ~/Documents/logbook/$(date '+%Y-%m-%d').md
}
