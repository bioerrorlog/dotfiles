alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

alias grep='grep --color=auto'

alias tt='terraform'
alias ttp='terraform plan'
alias ttpp='tf_result_temp=$(mktemp); terraform plan | tee >(grep -E "#|Plan:" > ${tf_result_temp}) && cat ${tf_result_temp}'
alias tta='terraform apply'
alias ttm='terraform fmt -recursive'

alias trr='tree -L 3'

alias mypath='echo $PATH | tr ":" "\n"'
