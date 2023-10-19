include world

big-bang('inert', [list: ])

fun increment(x):
  x + 1
end

fun s-triangle():
      # Definer trekanten
  triangle(100, "solid", "blue")
end

fun f-on-draw(world):
      # Tegn trekanten
  place-image(s-triangle(), 100, 100, empty-scene(200, 200))
end


big-bang(place-image(s-triangle(), 10, 10, empty-scene(200, 200)), [list: on-tick(increment), to-draw(f-on-draw)])