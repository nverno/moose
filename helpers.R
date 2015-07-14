### helpers.R --- 
## Filename: helpers.R
## Description: 
## Author: Noah Peart
## Created: Mon Jul 13 21:54:11 2015 (-0400)
## Last-Updated: Mon Jul 13 23:15:39 2015 (-0400)
##           By: Noah Peart
######################################################################

## Download github repo
github <- function(repo, name="nverno") {
    site <- sprintf("http://github.com/%s/%s", name, repo)
    response <- if (!dir.exists(repo)) {
        system(paste("git clone", site), intern=T)
    } else {
        system(sprintf("git -C %s pull", repo), intern=T)
    }
    response
}

