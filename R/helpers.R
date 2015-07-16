### helpers.R --- 
## Filename: helpers.R
## Description: 
## Author: Noah Peart
## Created: Mon Jul 13 21:54:11 2015 (-0400)
## Last-Updated: Wed Jul 15 14:40:47 2015 (-0400)
##           By: Noah Peart
######################################################################

## Download github repo
github <- function(repo, name="nverno") {
    site <- sprintf("http://github.com/%s/%s", name, repo)
    response <- if (!dir.exists(repo)) {
        system(paste("git clone", site), intern=T)
    } else {
        system(sprintf("git -C %s reset --hard HEAD", repo))
        system(sprintf("git -C %s pull", repo), intern=T)
    }
    response
}

## Find .Rmd documents
findRmds <- function() {

}

