# Basic GitHub Usage

To use GitHub you first need an account so make that. Keep in mind you need a name and password that is easy to remember and type. Git and GitHub work by file groups called repositores. Git is the client side that interacts with github. 

## Installation

First install scoop (Package manager.) You can install Git from the website but it is simpler to install with scoop.

Run in PowerShell:

`$ Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')`

Then run:

`$ scoop install git`

## Usage

There are 6 main commands you will use. 

* Clone
* Init
* Add
* Commit
* Push
* Pull

#### Clone

`$ git clone [REPO_LINK]`

This will clone a public repository to your current directory. You can test it with this one. In the link only include the username and repo name. ie `https://github.com/sebaju/dotfiles` not `https://github.com/sebaju/dotfiles/main/GITTUT.md`

#### Init

`$ git init [REPO_NAME(optional)]`

Creates an empty Git repo in the current directory/creates a new repo and directory with the name chosen.

This is done by creating a .git file in the chosen directory. When you use git commands other than `clone` and `init` it looks for a .git file for information about the repository. 

Note: using init will not create a repository on your github account you first have to `push` it.

#### Add

`$ git add [FILES_TO_BE_STAGED_FOR_COMMIT]`

There are three stages to pushing changes to a repository to GitHub. You first have to stage changes to commit. Common syntax is:

`$ git add .`

The . stages all files in the repo.

#### Commit

`$ git commit -m '[MESSAGE]'`

After you have staged changes you have to commit them. This is less useful for newer users but it is still a nessesary step. (It is mostly useful for larger groups/long term projects as it divides and labels the changes you make to your code.)

Make sure to use quotes around the message.

#### Push

`$ git push`

Now you can finally push your changes to GitHub and sync your clients version of the repo you are working on with GitHub. During the time between the edits you made and you running `$ git push` your version of the repo is 'ahead' of GitHub by however many commits you have staged.

#### Pull

`$ git pull`

When GitHubs repo is ahead or yours is 'behind' you have to pull the changes made to your computer to sync your repo. 

## Keep in mind

If you want to know more you can run 

`$ git` or `$ git [COMMAND] -h`

Remember you need to stay in the directory of the repo.

#### Command line navigation

To change directories in the command line use 

`$ cd [DIRECTORY]`

To list files in your current directory

`$ dir` if using cmd or `$ ls` if using PowerShell

## Batch file

I have included a batch file that automatically adds, commits, and pushes your changes. Copy it into your repo or run `$ gith -c` to allow it to be run from anywhere.

the usage is:

`$ gith [COMMIT_MESSAGE]`

No quotes needed! If you copy it to a repo make sure to add `gith.bat` to your .gitignore file if you have one. 
