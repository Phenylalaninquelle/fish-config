## aliases
alias update "sudo apt update; sudo apt upgrade -y"

## environment variables
set -gx JAVA_HOME "/usr/lib/jvm/java-8-oracle/jre"

set -gx BOOST_ROOT "/opt/boost/boost_1_61_0"

## PATH adjustments
set -l PATH_OPT_BIN "/opt/bin"

set -l PATH_USER_BIN "/home/jan/bin"

set -gx PATH $PATH $PATH_OPT_BIN $PATH_USER_BIN

## Git stuff

set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

## Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
# set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate 'S'
set __fish_git_prompt_char_untrackedfiles 'U'
# set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'


function fish_prompt
  set last_status $status

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s ' (__fish_git_prompt)

  set_color normal
end
