
get_bird_names<-function(x, language){
  library(rvest)
  library(tidyverse)

  URL <- "http://norway.bendiksen.org/norwegianbirds.php"

  pg <- read_html(URL)
  tab <- html_table(pg, fill=TRUE)[[1]]

    if(language=="English"){
    tab %>%
      filter(agrepl(x,`English name`))
  } else{
    if(language=="Norwegian"){
    tab %>%
    filter(agrepl(x,`Norwegian name`))
  }else{
    if(language=="Latin"){
      tab %>%
      filter(agrepl(x,`Latin name`))
  }else{
    print("Insert valid language")
    }
  }}}

#get_bird_names("Sparrow", "English")
