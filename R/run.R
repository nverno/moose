#!/usr/bin/Rscript

## This
## library(shiny)
## runApp(appDir = "../app", launch.browser = TRUE)

## Or this
rmarkdown::run(
    default_file = "main.Rmd",
    dir = "C:/home/work/moose",
    shiny_args = list(
        port = 7088,
        launch.browser = TRUE,
        host = "127.0.0.1"))
