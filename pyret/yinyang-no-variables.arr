


main-circle = overlay-align("pinhole", "middle", circle(50, "outline", "black"), circle(50, "solid", "white"))
 
half-circle-white = crop(0, 0, 50, 100, circle(50, "solid", "white"))

overlay-align("pinhole", "middle",
  crop(0, 0, 50, 100, circle(50, "solid", "white")), overlay-align("pinhole", "middle", circle(50, "outline", "black"), circle(50, "solid", "white")))
half-circle-black = crop(50, 0, 100, 100, circle(50, "solid", "black"))

main-circle-divided = overlay-align("pinhole", "middle",
  crop(50, 0, 100, 100, circle(50, "solid", "black")), overlay-align("pinhole", "middle", circle(50, "outline", "black"), circle(50, "solid", "white")))

minor-circle-black = overlay-align("pinhole", "middle", circle(8, "solid", "white"), circle(25, "solid", "black"))

minor-circle-white = overlay-align("pinhole", "middle", circle(8, "solid", "black"), circle(25, "solid", "white"))

two-circles = overlay-align("pinhole", "top",
  overlay-align("pinhole", "middle", circle(8, "solid", "black"), circle(25, "solid", "white")), overlay-align("pinhole", "middle",
  crop(50, 0, 100, 100, circle(50, "solid", "black")), overlay-align("pinhole", "middle", circle(50, "outline", "black"), circle(50, "solid", "white"))))

overlay-align("pinhole", "bottom", overlay-align("pinhole", "middle", circle(8, "solid", "white"), 
  circle(25, "solid", "black")), overlay-align("pinhole", "top", overlay-align("pinhole", "middle", 
    circle(8, "solid", "black"), circle(25, "solid", "white")), overlay-align("pinhole", "middle",
      crop(50, 0, 100, 100, circle(50, "solid", "black")), overlay-align("pinhole", "middle", 
        circle(50, "outline", "black"), circle(50, "solid", "white")))))