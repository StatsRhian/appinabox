get_jr_cartoon = function(){
  files = list.files(system.file("app/www/cartoons", package = "appinabox"),
                     full.names = TRUE)

  list(src = sample(files, 1),
       contentType = 'image/jpg',
       height = 300,
       alt = "A Jumping Rivers cartoon")
}
