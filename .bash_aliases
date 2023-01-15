alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias tt='terraform'
alias ttp='terraform plan'
alias ttpp='tf_result_temp=$(mktemp); terraform plan | tee >(grep -E "#|Plan:" > ${tf_result_temp}) && cat ${tf_result_temp}'
alias tta='terraform apply'
alias ttm='terraform fmt -recursive'

alias trr='tree -L 3'

alias mypath='echo $PATH | tr ":" "\n"'
