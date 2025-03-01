r <- getOption("repos")
r["CRAN"] <- "https://cran.rstudio.com/"

options(
  repos = r,
  knitr.table.format = "latex",
  kable_styling_full_width = TRUE,
  kable_styling_latex_options = c("hold_position")
)

knitr::opts_chunk$set(
  echo = FALSE,
  fig.align = "center",
  message = FALSE
)

kable <- function(...) {
  kableExtra::kable_styling(kableExtra::kbl(..., booktabs = TRUE))
}
