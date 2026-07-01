# Bash completion for `bn`: completes local branch names.

_bn_completions() {
  local cur
  cur="${COMP_WORDS[COMP_CWORD]}"

  git rev-parse --is-inside-work-tree > /dev/null 2>&1 || return

  COMPREPLY=( $(compgen -W "$(git branch --format='%(refname:short)' 2>/dev/null)" -- "$cur") )
}
complete -F _bn_completions bn
