
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Travis-CI Build
Status](https://travis-ci.org/nevrome/wellspell.addin.svg?branch=master)](https://travis-ci.org/nevrome/wellspell.addin)
[![Coverage
Status](https://img.shields.io/codecov/c/github/nevrome/wellspell.addin/master.svg)](https://codecov.io/github/nevrome/wellspell.addin?branch=master)

# wellspell.addin

![](https://github.com/nevrome/wellspell.addin/raw/master/inst/gif/mastake.gif)

wellspell is an RStudio Addin to quickly highlight spelling or  
grammar errors in text documents. It employs the hunspell spell  
checking engine via the hunspell package and the LanguageTool  
grammar checking engine via the LanguageToolR package to do so.  
Checking works for many languages.

**Installation**

Install the wellspell.addin R package from Github:  
`devtools::install_github("nevrome/wellspell.addin")`. To enable  
its features you need additional packages:

• Spellcheck

  - Install the hunspell R package that contains a standalone  
    version of hunspell: `install.packages("hunspell")`

• Grammar check

  - Install the LanguageToolR R package  
    `devtools::install_github("nevrome/LanguageToolR")`. It  
    does not contain LanguageTool

  - Install LanguageTool manually or with the function  
    `LanguageToolR::lato_quick_setup()`

  - Restart RStudio

**Quickstart guide**

To use wellspell.addin, you can select an arbitrary amount of text  
in a text document in RStudio (e.g. a markdown, latex or html  
document) and run `spellcheck()` or `gramcheck()`. As the  
functions are registered as RStudio Addins, it is possible to run  
them from the Addins dialogue or even with a keyboard shortcut  
(e.g. Ctrl+Alt+7 and Ctrl+Alt+8).

At the first run in a new environment, `spellcheck()` and  
`gramcheck()` will call `set_config()`, which is another Addin  
with a minimalistic user interface. It allows you to set  
environment variables to control the behaviour of the checking  
tools. If the environment variables are set, `spellcheck()` and  
`gramcheck()` select and thereby highlight all words/expressions  
identified as wrong.

The additional functions `get_config()`, `is_config()` and  
`rm_config` are for dealing with the environment variables and  
usually don\`t have to be called directly.

**How to install hunspell dictionaries for other languages?**

A default RStudio installation includes English dictionaries for  
the US, UK, Canada, and Australia. In addition, dictionaries for  
many other languages can be installed. To add these dictionaries,  
go to the *Spelling* pane of the *Options* dialog, and select  
*Install More Languages…* from the language dictionary select  
box. This will download and install all of the available  
languages. Further instructions can be found here. If this does  
not work or the relevant languages are not in the default  
selection you can install languages by copying the dictionary  
files (.dic + .aff) to one of these locations:  
`hunspell::dicpath()`.
