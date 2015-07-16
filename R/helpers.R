### helpers.R --- 
## Filename: helpers.R
## Description: 
## Author: Noah Peart
## Created: Mon Jul 13 21:54:11 2015 (-0400)
## Last-Updated: Wed Jul 15 21:22:18 2015 (-0400)
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
findRmds <- function(folders) {
    res <- sapply(folders, list.files, full=T, recursive=T, pattern="\\.[R]md")
    res[lengths(res) > 0]
}

