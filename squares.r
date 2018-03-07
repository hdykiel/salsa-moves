## Create rectangles for website

# Basic Step

mySquare <- function(red, green, blue, text) {
  
  
  rect <- data.frame(x = 1,
                     colors = rgb(red = red/255,green = green/255,blue = blue/255),
                     text = paste(text))
  
  library(ggplot2)
  full <- ggplot(rect, aes(x, y = 0, fill = colors, label = text)) +
    geom_tile(width = .9, height = .9) + # make square tiles
    geom_text(color = "white", size = 13 ) + # add white text in the middle
    scale_fill_identity(guide = "none") + # color the tiles with the colors in the data frame
    coord_fixed() + # make sure tiles are square
    theme_void()  # remove any axis markings
  
  
  thumb <- ggplot(rect, aes(x, y = 0, fill = colors, label = text)) +
    geom_tile(width = .5, height = .5) + # make square tiles
    geom_text(color = "white", size = 8 ) + # add white text in the middle
    scale_fill_identity(guide = "none") + # color the tiles with the colors in the data frame
    coord_fixed() + # make sure tiles are square
    theme_void() # remove any axis markings
  
  
  
  # Export to PNG
  png(paste("static/images/thumbs/", text, ".png", sep = ""), width = 275, height = 275)
  plot(thumb)
  dev.off()
  
  png(paste("static/images/full/", text, ".png", sep = ""), width = 500, height = 500)
  plot(full)
  dev.off()
  


}

mySquare(0,128, 128, "Basic Step")
mySquare(0,128, 50, "Inside Turn")
mySquare(0,24, 0, "Outside Turn")
mySquare(66,134, 244, "Copa")
mySquare(66,234, 38, "72")
mySquare(66,0, 38, "Sesha")
mySquare(128,34, 38, "creepy")
mySquare(0,128, 128, "Casa Caminando")
mySquare(66,134, 244, "Cool Music Video")
