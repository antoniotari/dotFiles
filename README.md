# Purpose
Use this repo to manage my config files

# How to use
1. Clone this project; if you want to use it for your own, fork it

2. To create symbolic links of the config files into your home directory, 
   run `python linkDotFilesBackToHome.py`

3. To install VIM plugins, run `python vim_plugin_install.py`. It would use 
   [pathogen](https://github.com/tpope/vim-pathogen) for plugin management.
   So if you don't have pathogon installed, it would install for you also.
   To update the install list, change the `vim_plugin_on_github` file.

4. If you get an error try to install pathogen separately:<br>
   mkdir -p ~/.vim/autoload ~/.vim/bundle;<br>
   curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

5. For each of the config file that want to manage using git, you can run 
  `python moveDotFileInHomeAndCreateSymoblicLink.py FILE_PATH` 
   (if only a simple file name is given, the filepath would be defaulted to 
   the home folder)
   It will move the file into the config file forder, and put an symbolic link
   in its origin place. 

# Foot Notes on vim key mappings
This section is irrelevant to the propuse of this repo.. but just some interesting points to take note

1. If one wants to use mapping `<c-?>`, note that ? can only be letters
2. And additionally, the combination below better not used:

        <c-m> -- means <enter>
        <c-i> -- means <tab>
        <c-s> -- means suspend, in most terminals

3. Better be careful that, do not conflict with the tmux's prefix-key

# TODO
- Currently the user need to handle the .bashrc file themselves (by sourcing this file in their .bashrc).
  Consider using script to auto-add the sourcing part, and don't add if it already exists in the `.bashrc`
  folder.
