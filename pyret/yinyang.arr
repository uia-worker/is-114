purple-tri = triangle(30, "solid", "purple")
green-sqr = rectangle(60, 60, "solid", "green")

above(purple-tri,
  overlay(rotate(45, purple-tri),
    green-sqr))


main-circle = overlay-align("pinhole", "middle", circle(50, "outline", "black"), circle(50, "solid", "white"))
main-circle 
half-circle-white = crop(0, 0, 50, 100, circle(50, "solid", "white"))
half-circle-white
overlay-align("pinhole", "middle",
  half-circle-white, main-circle)
half-circle-black = crop(50, 0, 100, 100, circle(50, "solid", "black"))
half-circle-black
main-circle-divided = overlay-align("pinhole", "middle",
  half-circle-black, main-circle)

minor-circle-black = overlay-align("pinhole", "middle", circle(8, "solid", "white"), circle(25, "solid", "black"))

minor-circle-white = overlay-align("pinhole", "middle", circle(8, "solid", "black"), circle(25, "solid", "white"))

two-circles = overlay-align("pinhole", "top",
  minor-circle-white, main-circle-divided)
overlay-align("pinhole", "bottom",
  minor-circle-black, two-circles)