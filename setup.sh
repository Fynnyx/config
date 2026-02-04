# Run all the scripts in the scripts folder
scripts_folder="scripts"

for script in $scripts_folder/*.sh; do
  echo "Running $script"
  . $script
done

# Reload the shell configuration
source ~/.bashrc