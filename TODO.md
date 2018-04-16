# ARTICLES
* http://codenugget.co/2015/03/05/declarative-vs-imperative-programming-web.html
* https://natelandau.com/my-mac-osx-bash_profile/
* https://github.com/git/git/blob/master/contrib/completion/git-completion.bash

/* .bash_profile
PATH=$PATH:/usr/local/sbin
alias composer="php /usr/local/bin/composer.phar"
parse_git_branch() {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
#export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\[\033[0;37m\]\$(p$
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
```
if [ -f ~/.git-completion.bash ]; then
        .~/.git-completion.bash
fi

# Check if bash aliases.
if [ -f ~/.bash_aliases ]; then
        source ~/.bash_aliases;
fi

export EDITOR=/usr/bin/nano
```
* /

# BOOKS/TUTORIALS

## JS
* [-] MDN: JAVASCRIPT
* [-] YOU DON'T KNOW JAVASCRIPT
* [-] SPEAKING JAVASCRIPT
* [/] WATCH AND CODE BEASTS
* [/] WATCH AND CODE (JAVASCRIPT)
* [/] CORE JAVASCRIPT CONCEPTS

## HTML/CSS
* [/] BOOTSTRAP 3/4
* [-] HTML5 & CSS3
* [-] HEAD FIRST HTML5 PROGRAMMING
* [-] CSS MASTER
* [-] FOUNDATION GAME DESIGN WITH HTML5 AND JAVASCRIPT (CSS)
* [-] ADVANCED GAME DESIGN WITH HTML5 AND JAVASCRIPT (CSS)

## FRONT-END
* [-] NG-BOOK (ANGULAR)
* [-] MDN: HTTP
* [-] MDN: NODE + SQL
* [-] BUILD FRONT-END APPS WITH PLAIN JAVASCRIPT
* [/] INSTANT HANDLEBARS

## CLI
* [-] PRO GIT
* [-] OLIVER: INTRODUCTION TO UNIX
* [-] INTRODUCTION TO BASH, VIM & REGEX
* [-] PRACTICAL VIM

## FUNCTIONAL
* [-] LEARNING UNDERSCORE (MONGO)
* [-] FUNCTIONAL JAVASCRIPT (UNDERSCORE)
* [-] JAVASCRIPT ALLONGE (FUNCTIONAL)
* [-] LEARNING JAVASCRIPT DESIGN PATTERNS

## TESTING
* [-] JAVASCRIPT TESTING
* [-] TESTABLE JAVASCRIPT
* [-] TEST-DRIVEN JAVASCRIPT DEVELOPMENT
* [-] TEST-DRIVEN DEVELOPMENT EXTENSIVE TUTORIAL
* [/] JAVASCRIPT TESTING WITH JASMINE

## CRAFTMANSHIP
* [-] HEAD FIRST SOFTWARE DEVELOPMENT
* [-] THE PRAGMATIC PROGRAMMER- FROM JOURNEYMAN TO MASTER 
* [-] PRACTICES OF AN AGILE DEVELOPER
* [-] THE DEVELOPER'S CODE
* [-] JOEL ON SOFTWARE
* [-] MORE JOEL ON SOFTWARE
* [-] CLEAN CODE: A HANDBOOK OF AGILE SOFTWARE CRAFTSMANSHIP
* [-] CLEAN CODER: A CODE OF CONDUCT FOR PROFESSIONAL PROGRAMMERS
* [-] CLEAN ARCHITECTURE: A CRAFTSMAN'S GUIDE TO SOFTWARE STRUCTURE AND DESIGN

## COMPSCI
* [-] CODE: THE HIDDEN LANGUAGE OF COMPUTER HARDWARE AND SOFTWARE
* [-] IMPOSTER'S HANDBOOK 
* [-] DATA STRUCTURES AND ALGORITHMS WITH JAVASCRIPT
* [-] CRACKING THE CODING INTERVIEW
* [-] NAND TO TETRIS

## SQL
* [-] SQL QUERIES FOR MERE MORTALS
* [-] DATABASE DESIGN FOR MERE MORTALS
* [-] BEGINNING DATABASE DESIGN SOLUTIONS
* [-] SQL ANTIPATTERNS

## REACT
* [-] THE BEGINNER'S GUIDE TO REACT 
* [-] SURVIVE JS REACT
* [-] REACT FOR BEGINNERS
* [-] THE ROAD TO LEARN REACT
* [-] TAMING THE STATE IN REACT
* [-] FULL STACK REACT
* [-] LEARN REDUX