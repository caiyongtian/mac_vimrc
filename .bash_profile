# bash_profile

export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_51.jdk/Contents/Home
export JAVA_HOME
export PATH=${PATH}:$JAVA_HOME/bin:$JAVA_HOME/jre/bin
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:/Users/flank/Applications/Designer_x64
export VAGRANT_HOME="/Volumes/vm/vagrant_home"
#-------tmux-------------
alias t='tmux new -s'  #创建newsession
alias ta='tmux a -t'   #重新进入session 后加session名
alias tl='tmux ls'   #查看session元素
alias tlp='tmux lsp'   #查看pane元素
alias tlw='tmux lsw'   #查看windows元素
#leader Ctrl+z
#-----pane操作
# |  竖分
# -  横分
# o  切换下一个
# kjhl  上下左右切换
# x  关闭
#-----windows操作
# c  创建
# n  切换下一个
# w  列表显示窗口
# &  关闭
#-----session操作
# s  列表显示session
# d  退出当前session 再次进入tmux a -t

#-------tmux-------------
#export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
#export PYENV_VIRTUALENV_DISABLE_PROMPT=1
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

alias pych='pyenv local'       #变更python版本［3.5.0｜system（2.7）］
alias pyls='pyenv versions'       #变更python版本［3.5.0｜system（2.7）］
alias pvadd='pyenv virtualenv'   #创建虚拟环境 后面加环境名称
alias pvls='pyenv virtualenvs'  #查看虚拟环境
alias pvat='pyenv activate'    #进入虚拟环境 后面加环境名称
alias pvde='pyenv deactivate'   #退出虚拟环境
alias pvrm='pyenv virtualenv-delete'   #删除虚拟环境 后面加环境名称
# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
          . /etc/bashrc
        fi
#change the pwd configuration to an arrow
export PS1='\[\e[0;33m\]\A \[\e[0;36m\][\W]\[\e[0;31m\]'$(parse_git_branch)'\[\e[01;37m\] \$ \[\e[m\]'
export TERM=xterm-256color

alias vi="vim"
alias py="python"
alias ip="ifconfig"

#k8s setting
#source $(brew --prefix)/etc/bash_completion
#source <(kubectl completion bash)
#source <(helm completion bash)
brew unlink bash-completion && brew link bash-completion
alias helms='helm --tls --tiller-namespace kube-system'
alias kls='kubectl get po --all-namespaces -o wide'
alias k='kubectl'
alias ks='kubectl get po'

alias d:ps="docker ps"

#Nginx server
alias ng-conf="sudo vim /usr/local/etc/nginx/nginx.conf"
alias ng="sudo nginx"
alias ng-sd="sudo nginx -s stop"

#----------My shell shortcut--------------#
alias rc='vim ~/.bashrc'
alias s='vim ~/.bash_profile'
alias src='source ~/.bash_profile'
alias vimrc='vim ~/.vimrc'

alias bc='cd -'
alias ll='ls -lh'
alias la='ls -lha'
alias ..='cd ..'
alias ...='cd ../..'
alias cl='clear'

# add alias for apache virtual host
alias apc-server='cd /etc/apache2/ && sudo vim .'
# alias apc-rs='sudo service apache2 restart'
alias apc-rs='sudo apachectl restart'
alias apc-host='sudo vim /etc/hosts'
alias apc-vhost='sudo vim /etc/apache2/extra/httpd-vhosts.conf'
alias apc-conf='sudo vim /etc/apache2/httpd.conf'


alias down='cd ~/Downloads/'
alias des='cd ~/Desktop'

#start mysql server
alias mysql-st='mysql.server start'
alias mysql-sd='mysql.server stop'

alias ssh-repo='ssh root@10.210.10.139'
alias ssh-mg='ssh root@10.210.10.35'
alias ssh-bwg='ssh -p 28838 root@172.96.242.128 '

alias ssh-aws='ssh -i ~/.ssh/awspubkey.pem ec2-user@34.216.22.237'
#alias ssh-vv='ssh -i ~/.ssh/vv -p 2683 virtualv@c3s4-2e-syd.hosting-services.net.au'
alias ssh-no1='ssh root@192.168.221.111'

alias ssh-k1='ssh root@10.210.10.223'
alias ssh-k2='ssh root@10.210.10.224'
alias ssh-k3='ssh root@10.210.10.225'
alias ssh-k4='ssh root@10.210.10.226'
alias ssh-k5='ssh root@10.210.10.227'

# samswitch
alias ssh81='ssh root@10.210.10.81'
alias ssh82='ssh root@10.210.10.82'
alias ssh131='ssh root@10.210.10.131'
alias ssh132='ssh root@10.210.10.132'
alias ssh172='ssh admin@10.210.10.172'
alias ssh173='ssh admin@10.210.10.173'

# alias for git
alias git-conf='vim ~/.gitconfig'
alias git-set='git config --global user.name "caiyongtian" && git config --global user.mail "709731685@qq.com"'
alias gs="git status" #查看状态
alias gc="git checkout"  #签出
alias gcb="git checkout -branch"  #拆分分支
alias gmf="git merge --no-ff"  #合并分支
alias gcm='git commit -m'  #添加到仓库
alias ga="git add --all"  #添加到工作区
alias gra="remote add origin" #后面添加仓库地址
alias gp="git push -u origin master" #上传到远程仓库

#--------------My shell scripts---------------#

#config the git branch
parse_git_branch()
{
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

