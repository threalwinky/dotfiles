This is my NeoVim settings

Requirements:
    + Internet
    + Python and pynvim
    + NodeJS and install neovim using npm

Installing :
- Install PowerShell config
    + Get Scoop ("https://scoop.sh/")
    + Run ("scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json")
    + Copy and paste Microsoft.PowerShell_profile.ps1 and quick-term.omp.json to "~\Documents\WindowsPowerShell"
    + Install-Module PowershellGet -Force
    + PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force
    + Install-Module -Name Terminal-Icons -Repository PSGallery
- Install NeoVim config
    + Install plug-vim : https://github.com/junegunn/vim-plug
    + Copy and paste nvim and nvim-data folder at local. For me it's is ~/AppData/Local/
    + Edit file init.vim with NeoVim run command : PlugI to install all the plug-in
    + Enjoy

More beautiful if you have Windows Terminal or Linux terminal and use its background

And here is the preview pic of my PowerShell config :

<img src = ./image/img1.png> </img>

and my NeoVim config : 

<img src = ./image/img2.png> </img>

Hopefully you enjoyed !!
