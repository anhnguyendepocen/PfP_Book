file.remove("PfP_Book.md")

### HTML

bookdown::render_book("_bookdown.yml", output_format = "bookdown::gitbook", 
                      clean = TRUE, 
            output_dir = "docs/", 
            encoding = "UTF-8")

# bookdown::publish_book(render = "local")

### Epub

bookdown::render_book("_bookdown.yml",
                      output_format = "bookdown::epub_book",
                      clean = TRUE,
                      output_dir = "docs/",
                      encoding = "UTF-8")

### Kindle

# bookdown::kindlegen(epub = "Epub/")


### Word

# bookdown::render_book("_bookdown.yml", output_format = "bookdown::word_document2", clean = T,
#                      output_dir = "DOC/",
#                     encoding = "UTF-8")


### PDF

bookdown::render_book("_bookdown.yml", 
                      output_format = "bookdown::pdf_book", 
                      clean = T,
                      output_dir = "docs",
                      encoding = "UTF-8")

