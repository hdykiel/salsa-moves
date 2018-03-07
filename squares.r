## Create rectangles for website

# Basic Step

mySquare <- function(color, text) {
  
  
  rect <- data.frame(x = 1,
                     color = color,
                     text = paste(text))
  
  library(ggplot2)
  full <- ggplot(rect, aes(x, y = 0, fill = color, label = text)) +
    geom_tile(width = .9, height = .9) + # make square tiles
    geom_text(color = "white", size = 13 ) + # add white text in the middle
    scale_fill_identity(guide = "none") + # color the tiles with the colors in the data frame
    coord_fixed() + # make sure tiles are square
    theme_void()  # remove any axis markings
  
  
  thumb <- ggplot(rect, aes(x, y = 0, fill = color, label = text)) +
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

mySquare("goldenrod2", "Basic Step")
mySquare("dodgerblue", "Inside Turn")
mySquare("gold", "Outside Turn")
mySquare("cyan2", "Copa")
mySquare("darkorange", "72")
mySquare("violetred", "Sesha")
mySquare("mediumspringgreen", "creepy")
mySquare("goldenrod2", "Casa Caminando")
mySquare("dodgerblue", "Suave")
