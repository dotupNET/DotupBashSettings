# DotupBashSettings
Load and save configuration files from bash scripts

Functions:
- **Bash-LoadSettings** *configFile* *configArray*
- **Bash-SaveSettings** *configFile* *configArray*
- **Bash-GetSettings** *configFile* *key*
- **Bash-SetSettings** *configFile* *key* *value*
- **Bash-PrintSettings** *configArray*

```bash

. path-to-file/BashSettings.sh

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
Bash-SaveSettings "$(pwd)/.config.saved" config

# Accesss value by key
echo ${config[AUTO]}

# Accesss value by key from file
autoValue=$(Bash-GetSettings "$(pwd)/.config.saved" "AUTO")
echo "AUTO value: $autoValue"

# Write value by key to file
Bash-SetSettings "$(pwd)/.config.saved" "AUTO" 99

```
