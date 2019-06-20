git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tmux-logging ~/.tmux/plugins/tmux-logging/
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack
apt install zsh -Y
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sed -i '/ZSH_THEME="robbyrussell"/c\ZSH_THEME="candy"' .zshrc
source .zshrc

echo "set -g prefix C-a
bind C-A send-prefix
unbind C-b
set -g history-limit 100000

source-file "${HOME}/.tmux-themepack/powerline/block/cyan.tmuxtheme"
set -g mouse on

# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-logging'

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'git@github.com/user/plugin'
# set -g @plugin 'git@bitbucket.com/user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run -b '~/.tmux/plugins/tpm/tpm'

run-shell ~/.tmux/plugins/tmux-logging/logging.tmux" > .tmux.conf
