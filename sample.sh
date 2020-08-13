. BashSettings.sh

# Initialize array that holds the configuration
typeset -A config 

# Load complete configuration file into variable
Bash-LoadSettings "$(pwd)/.config" config

# Print key value pairs
Bash-PrintSettings config

# Modify entry by key
config[AUTO]=9

# Print key value pairs
Bash-PrintSettings config

# Save complete configuration to file
Bash-SaveSettings "$(pwd)/.config" config

# Accesss value by key
echo ${config[AUTO]}

# Write value by key to file
Bash-SetSettings "$(pwd)/.config" "AUTO" 99

# Accesss value by key from file
autoValue=$(Bash-GetSettings "$(pwd)/.config" "AUTO")
echo "AUTO value: $autoValue"
