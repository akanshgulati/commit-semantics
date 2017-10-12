<p align="center">
  <a href="https://github.com/akanshgulati/commit-semantics" align="center">
    <img src="commit-semantics-banner.jpg" alt="commit-semantics" align="center" />
  </a>
</p>

# Commit-Semantics

Inspired by Angular JS's committing style as on [github](https://github.com/angular/angular/commits/master), this project installs git aliases of various commit message type and helps in creating a standard of committing format.  

## Introduction
These are **custom git commands** that encourages the git user to write formatted git commit messages. These aliases will standardised git commits.

 e.g. ```git feat install.sh 'Added commit semantics aliases'``` -> ```git commit -m 'feat(install.sh): Added commit semantics aliases'```
 
 More shorter way possible now: 
 
 e.g. ```gf feat install.sh 'Added commit semantics aliases'``` -> ```git commit -m 'feat(install.sh): Added commit semantics aliases'```
## Installation

1. Clone this repo, preferably in your $HOME directory. ```git clone git@github.com:akanshgulati/commit-semantics.git
 ~/.commit-semantics```


2. Install it as git aliases:
   ```cd ~/.commit-semantics && chmod 755 install.sh && ./install.sh```

  Tip: You can check if aliases are created in `~/.gitconfig` file respectively. Aliases will be created only if no respective alias is present in `~/.gitconfig` file

3. Ready to use.

## Usage

Once you install, you can have 10 git aliases.

Git alias  -> Actual command

* ```git feat <scope> "commit-message-here"``` -> ```git commit -m 'feat(<scope>): commit-message-here'```
* ```git docs <scope> "commit-message-here"``` -> ```git commit -m 'docs(<scope>): commit-message-here'```
* ```git chore <scope> "commit-message-here"``` -> ```git commit -m 'chore(<scope>): commit-message-here'```
* ```git fix <scope> "commit-message-here"``` -> ```git commit -m 'fix(<scope>): commit-message-here'```
* ```git refactor <scope> "commit-message-here"``` -> ```git commit -m 'refactor(<scope>): commit-message-here'```
* ```git style <scope> "commit-message-here"``` -> ```git commit -m 'style(<scope>): commit-message-here'```
* ```git test <scope> "commit-message-here"``` -> ```git commit -m 'test(<scope>): commit-message-here'```
* ```git perf <scope> "commit-message-here"``` -> ```git commit -m 'perf(<scope>): commit-message-here'```
* ```git cleanup <scope> "commit-message-here"``` -> ```git commit -m 'cleanup(<scope>): commit-message-here'```
* ```git tracking <scope> "commit-message-here"``` -> ```git commit -m 'tracking(<scope>): commit-message-here'```

## Guidelines
### Selecting `type` 
Different types of `type` are there according to make sure one can get idea about the core reason of commit message. Current script supports following types of commits.

* **feat**: Commits related to a new feature developed
* **fix**: Commits related a bug fix
* **style**: Commits related to styling in .css, .scss, .etc files.
* **cleanup**: Commits related to changes that do not affect the logic of the code (white-space, formatting, missing
  semi-colons, dead code removal, etc.)
* **refactor**: Commits related to changes that neither fixes a bug nor adds a feature but is used for restructuring the code
* **perf**: Commits related to changes that improves performance
* **test**: Commits related to adding missing tests or fixing them
* **chore**: Commits related to changes in build process, auxiliary tools and libraries such as documentation
generation
* **tracking**: Commits related to any kind of tracking which includes bug tracking, user tracking, analytics, etc.
* **docs**: Commits related to documentation changes, such as Readme.md file

### Selecting `scope` 

The scope in commit message could be anything specifying context of the commit change. A scope context can be a `module`,
`fileName`, `serviceName`, `directiveName`, `functionName` , `impactArea`, etc.

## Example

##### **Command**:  
git refactor header 'change z-index'
##### **Output**: 
git commit -m "refactor(header): change z-index"

 
