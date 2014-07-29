# Vim forever and always
export EDITOR=vim


# Make my life easier
alias tmux = "tmux -2"
alias ll="ls -lhA"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias gem='ruby -e "raise \"SUDO GEM DETECTED. Unalias gem at your own risk\" if ENV[\"USER\"] == \"root\"" && gem';

TODAY=`date +%a.%b.%d`
PAGES="public.md private.md"
DRAFTS="/Users/michelle/Desktop/meshev-drafts/"

## sounds
alias done="afplay /Users/michelle/meshev-sounds/the_crowd_roars.mp3"
alias rewardsound="done"
alias sunshine="afplay /Users/michelle/meshev-sounds/good_morning.mp3"
alias morningsunshine="sunshine"

## start writing
alias meshev.write="cd $DRAFTS && mkdir -p $TODAY && cd $TODAY && 
  touch $PAGES && pomo init && vim private.md"

# review all writing
alias meshev.review="cd $DRAFTS && say 'show no mercy'"

# daily routine
alias good.morning="tmux split-window -h && morningsunshine && say 'Another day, Michelle. It is the start of `DATE`. Good luck with your writing.' && meshev.write"
