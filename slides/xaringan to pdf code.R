# remotes::install_github("jhelvy/renderthis", dependencies = TRUE)
# install.packages('cli')
# install.packages("xaringan")
# install.packages("backports")
# install.packages("fastmap")
setwd("~/Projects/Teaching")
renderthis::to_pdf("xaringan_slides.Rmd")
renderthis::to_pptx("xaringan_slides.Rmd")


# renderthis::to_pptx("xaringan_slides.pdf")
# 
# 
# pagedown::chrome_print(
#   input = "xaringan_slides.html",
#   output = "xaringan_slides.pdf",
#   format = "pdf",
#   timeout = 120,
#   verbose = TRUE
# )

