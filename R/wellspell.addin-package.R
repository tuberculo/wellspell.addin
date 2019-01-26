#' @rdname wellspell
#' @title wellspell.addin
#' 
#' @description wellspell is an RStudio Addin to quickly highlight words with
#' spelling or grammar errors in text documents. It employs the
#' \href{http://hunspell.github.io}{hunspell spell checking engine}
#' via the \href{https://github.com/ropensci/hunspell}{hunspell package}
#' and the \href{https://github.com/btford/write-good}{write-good} linter
#' via the \href{https://github.com/ropenscilabs/gramr}{gramr package}
#' to do so. Spellchecking works for many languages, grammar checking is limited
#' to english text.
#' 
#' To use it, you can select an arbitrary amount of text in a text document
#' in RStudio (e.g. a markdown, latex or html document) and run \code{spellcheck()}
#' or \code{gramcheck()}.
#' As the functions are registered as RStudio Addins, it is possible to run them from
#' the Addins dialogue or even with a keyboard shortcut (e.g. Ctrl+Alt+7 and Ctrl+Alt+8).
#' 
#' At the first run in a new environment, \code{spellcheck()} and \code{gramcheck()}
#' will call \code{set_config()}, which is another Addin with a minimalistic user interface.
#' It allows you to set three environment variables \code{wellspell_language},
#' \code{wellspell_format} and \code{wellspell_grammar_ignore}.
#' These are used to configure \code{hunspell::hunspell()} and \code{gramr::check_grammar()}.
#' \code{wellspell_language} is fed to \code{hunspell(dict = dictionary(lang = ...))},
#' \code{wellspell_format} to \code{hunspell(format = ...)} and
#' \code{wellspell_grammar_ignore} to \code{check_grammar(options = ...)}
#' 
#' If the environment variables are set, \code{spellcheck()} and \code{gramcheck()}
#' select and thereby highlight all words/expressions identified as wrong.
#' 
#' The additional functions \code{get_config()}, \code{is_config()} and \code{rm_config}
#' are for dealing with the environment variables and usually don't have to be called
#' directly.
#' 
#' \strong{How to install hunspell dictionaries for other languages?}
#'   
#' RStudio's default installation includes English dictionaries for the US, UK, Canada,
#' and Australia. In addition, dictionaries for many other languages can be installed.
#' To add these dictionaries, go to the \emph{Spelling} pane of the \emph{Options} dialog, and
#' select \emph{Install More Languages...} from the language dictionary select box. This will
#' download and install all of the available languages. Further instructions can be found
#' \href{https://support.rstudio.com/hc/en-us/articles/200551916-Spelling-Dictionaries}{here}.
#' If this doesn't work or the relevant languages are not in the default selection you can
#' install languages by copying the dictionary files (.dic + .aff) to one of these locations:
#' \code{hunspell::dicpath()}.
#' 
"_PACKAGE"