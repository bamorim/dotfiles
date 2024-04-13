# Disable fish greeting
set -g fish_greeting

if type -q nvim
  set -gx EDITOR nvim
  set -gx VISUAL nvim
else if type -q vim
  set -gx EDITOR vim
  set -gx VISUAL vim
else
  set -gx EDITOR vi
  set -gx VISUAL vi
end

# Add my custom functions to be autoloaded
if test -d $__fish_config_dir/custom_functions.d
  set -gp fish_function_path $__fish_config_dir/custom_functions.d
end
