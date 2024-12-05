# Dot Files


## To linnk dot files to a git repository

1. Set Up the Repository
Navigate to your home directory:


    cd ~
Create a directory for your dotfiles:


    mkdir -p dot-file
    cd dot-file
Initialize a new Git repository:


    git init
2. Link the .zshrc File to the Repo
Move your existing .zshrc file into the dot-file directory:


    mv ~/.zshrc ~/dot-file/.zshrc
Create a symbolic link from ~/.zshrc back to the dot-file directory:


    ln -s ~/dot-file/.zshrc ~/.zshrc
