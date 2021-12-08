library(bookdown)
# bookdown::render_book("Intermediate_R.Rmd", "bookdown::gitbook",output_dir = "MORS_ETF_2020",clean_envir = TRUE)

unlink("docs", recursive = T)

bookdown::render_book(input = "index.Rmd", output_format = "bookdown::gitbook",output_dir = "docs")

# bookdown::render_book(input = "index.Rmd", output_format = "bookdown::bookdown_site",output_dir = "MORS_ETF_2021")


# serve_book(dir = "index.Rmd", output_dir = "MORS_ETF_2021", preview = TRUE, in_session = TRUE, quiet = FALSE)
# rmarkdown::render_site(encoding = 'UTF-8') #HTML and PDF


# bookdown::preview_chapter(input = "4-Text-Analysis.Rmd")

zip::zipr(zipfile = "MORS_ETF_2020.zip",files =  "MORS_ETF_2020", recurse = TRUE)

