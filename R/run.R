#!/usr/bin/Rscript

library(methods)
library(docopt)

'usage: run.R [-e -p <port>] FILE
options:
 -e  Execute
 -p port [default: 7088]
Arguments:
 FILE  target RMD file' -> doc

opts <- docopt(doc)
str(opts)

if (opts$e) {
    rmarkdown::run(
        file = opts$FILE,
        default_file = basename(opts$FILE),
        ## dir = dirname(opts$FILE),
        shiny_args = list(
            port = as.numeric(opts$port), 
            launch.browser = TRUE,
            host = "127.0.0.1"),
        render_args = list(params=list(base=dirname(opts$FILE)))
    )
} else print ("no")


## This
## library(shiny)
## runApp(appDir = "../app", launch.browser = TRUE)


## Or this
## rmarkdown::run(
##     default_file = "index.Rmd",
##     dir = "C:/home/work/moose",
##     shiny_args = list(
##         port = 7088,
##         launch.browser = TRUE,
##         host = "127.0.0.1"))
