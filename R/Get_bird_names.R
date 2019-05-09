
get_bird_names<-function(species, language){

  URL <- "http://norway.bendiksen.org/norwegianbirds.php"

  pg <- read_html(URL)
  tab <- rvest::html_table(pg, fill=TRUE)[[1]]

    if(language=="English"){
    tab %>%
     dplyr::filter(agrepl(species,`English name`))
  } else{
    if(language=="Norwegian"){
    tab %>%
        dplyr::filter(agrepl(species,`Norwegian name`))
  }else{
    if(language=="Latin"){
      tab %>%
        dplyr::filter(agrepl(species,`Latin name`))
  }else{
    print("Insert valid language")
    }
  }}}

#get_bird_names("Sparrow", "English")
