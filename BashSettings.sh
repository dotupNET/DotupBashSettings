IFS="="

# Bash-LoadSettings file settings
Bash-LoadSettings() {
  declare -n result="$2"

  while read line || [ -n "$line" ]; do

    [[ -z ${line[0]} ]] && continue # skip empty lines

    set ${line[0]}
#    echo "$1 $2"

    result["$1"]=$2

  done < $1
}

# Bash-SaveSettings file settings
Bash-SaveSettings() {
  >$1

  local -n array=$2
  for key in "${!array[@]}"; do
    echo "$key=${array[$key]}"
  done >> $1
}

# Bash-PrintSettings settings
Bash-PrintSettings() {
  local -n array=$1
  for key in "${!array[@]}"; do
    echo "$key=${array[$key]}"
  done
}


# Bash-GetSettings file key
Bash-GetSettings() {
  typeset -A config # init array
  Bash-LoadSettings "$1" config
  echo ${config[$2]}
}

# Bash-GetSettings file key value
Bash-SetSettings() {
  typeset -A config # init array
  Bash-LoadSettings "$1" config
  config[$2]=$3
  Bash-SaveSettings "$1" config
}
