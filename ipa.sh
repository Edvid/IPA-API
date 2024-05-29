cat main.json | \
jq -r ".letters[\"$(
  cat main.json | \
  jq -r ".letters | keys" | \
  head -n -1 | tail -n +2 | \
  sed 's/^ *//;s/\",//g;s/\"//g' | \
  fzf
)\"]"




