cat main.json | \
jq -r ".letters[\"$(
  cat main.json | \
  jq -r ".letters | keys" | \
  head -n -1 | tail -n +2 | \
  sed 's/^ *//;s/\",//g;s/\"//g' | \
  (
    if [[ -n $1 ]]; then
      fzf --filter="$1" | head -n 1
    else
      fzf
    fi
  )
)\"]"




