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

Once you install, you can use 10 git aliases in following ways:
#### 1. __Only Committing__
**```git <type> <scope> <commit-message>```** -> **```git commit -m '<type>(<scope>): <commit-message>'```** 

e.g.
* _**git feat** install.sh "added options feature"_ __->__ _git commit -m 'feat(install.sh): added options feature'_
* _**git docs** readme "updated usage section"_ __->__ _git commit -m 'docs(readme): updated usage section'_
* _**git chore** package.json "Added task for uglify"_ __->__ _git commit -m 'chore(package.json): added task for uglify'_
* _**git fix** app "maximum call stack issue"_ __->__ _git commit -m 'fix(app): maximum call stack'_
* _**git refactor** MainController "removed duplicate code"_ __->__ _git commit -m 'refactor(MainController): removed duplicate code'_
* _**git style** input.scss "added secondary styling"_ __->__ _git commit -m 'style(input.scss): added secondary styling'_
* _**git test** appSpec "fixed test cases for code changes"_ __->__ _git commit -m 'test(appSpec): fixed test cases for code changes'_
* _**git perf** main.js "minified and bundled abc.js and def.js"_ __->__ _git commit -m 'perf(main.js): minified and bundled abc.js and def.js'_
* _**git cleanup** dateFilter "removed never executable code"_ __->__ _git commit -m 'cleanup(dateFilter): removed never executable code'_
* _**git tracking** sidebar "clicks on links"_ __->__ _git commit -m 'tracking(sidebar): clicks on links'_

2. __Committing with options__
* **```git <type> <scope> <commit-message> [options]```** -> **```git commit [options] -m '<type>(<scope>): <commit-message>'```**

e.g.
* _**git feat** install.sh "added options feature" a_ __->__ _git commit -a -m 'feat(install.sh): added options feature'_
* _**git fix** app "maximum call stack issue" p_ __->__ _git commit -p -m 'fix(app): maximum call stack'_

**Note:** Only those options can work that precedes `-m` option in git commit, such as `-p`, `-a`, `-s`, `-v`, `-c` .
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

 
