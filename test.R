## ----opts, include=FALSE-------------------------------------------------

knitr::opts_chunk$set(fig.path="Figs/", echo=FALSE, warning=FALSE,
                      message=FALSE, dev='svg')


## ----a-------------------------------------------------------------------

numericInput("n", "N:", 0, 5, 3)
conditionalPanel(
    condition = "input.n == 3",
    div(style="display:inline-block",
        selectInput("a", "A", choices=1:10)),
    div(style="display:inline-block",
        tags$label('Menu2', `for` = 'Sample1'), 
        tags$select(id = 'Sample1', class="input-small",
                    tagList(mapply(tags$option, 1:2, paste0(c("a", "b"), 1:2),
                                   SIMPLIFY=FALSE))))
)


## ----b-------------------------------------------------------------------
renderPrint({ 
    ## tags$head(tags$script(src="swap.js")) 
}) 

