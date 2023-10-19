circle-50-outline-black = circle(50, "outline", "black")
circle-50-outline-black

circle-50-solid-white = circle(50, "solid", "white")
circle-50-solid-white

circle-50-solid-black = circle(50, "solid", "black")
circle-50-solid-black

half-circle-50-black = crop(50, 0, 100, 100, circle-50-solid-black)
half-circle-50-black

circle-25-solid-white = circle(25, "solid", "white")
circle-25-solid-white

circle-8-solid-black = circle(8, "solid", "black")
circle-8-solid-black

circle-25-solid-black = circle(25, "solid", "black")
circle-25-solid-black

circle-8-solid-white = circle(8, "solid", "white")
circle-8-solid-white

combine-outline-with-circle = overlay-align("pinhole", "middle", circle-50-outline-black, circle-50-solid-white)
combine-outline-with-circle

combine-outline-with-circle-with-half-circle = overlay-align("pinhole", "middle", half-circle-50-black, combine-outline-with-circle)
combine-outline-with-circle-with-half-circle

combine-circle-25-black-with-circle-8-white = overlay-align("pinhole", "middle", circle-8-solid-white, circle-25-solid-black)
combine-circle-25-black-with-circle-8-white

combine-circle-25-white-with-circle-8-black = overlay-align("pinhole", "middle", circle-8-solid-black, circle-25-solid-white)
combine-circle-25-white-with-circle-8-black

combine-circle-25-white-with-circle-8-black-with-outline-with-circle-with-half-circle = overlay-align("pinhole", "top", combine-circle-25-white-with-circle-8-black, combine-outline-with-circle-with-half-circle)
combine-circle-25-white-with-circle-8-black-with-outline-with-circle-with-half-circle

yin-and-yang = overlay-align("pinhole", "bottom", combine-circle-25-black-with-circle-8-white, combine-circle-25-white-with-circle-8-black-with-outline-with-circle-with-half-circle)

yin-and-yang