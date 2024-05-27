r <- getOption("repos")
r["CRAN"] <- "https://cran.rstudio.com/"

options(
  repos = r,
  prompt = "================================================================================\n» ",
  knitr.table.format = "latex",
  kable_styling_full_width = TRUE,
  kable_styling_latex_options = c("hold_position")
)

coltam <- ggplot2::theme_minimal(
  base_size = 12,
  base_family = "Encode Sans"
) +
  ggplot2::theme(
    panel.grid = ggplot2::element_blank(),
    legend.position = "top"
  )


knitr::opts_chunk$set(
  echo = FALSE,
  fig.align = "center",
  message = FALSE
)

kable <- function(...) {
  kableExtra::kable_styling(kableExtra::kbl(..., booktabs = TRUE))
}

extrafont::loadfonts(quiet = TRUE)
