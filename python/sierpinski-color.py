# Import libraries
import turtle

# Initialize the Turtle
screen = turtle.Screen()
t = turtle.Turtle()

# Set the speed of the drawing
t.speed(0)

# Define a list of colors for filling the triangles
colors = ['red', 'green', 'blue', 'purple']  # Add more colors if needed

# Define a recursive function to draw the Sierpinski Triangle with colors
def sierpinski_triangle(turtle, order, size):
    if order == 0:
        # Base case: Draw an equilateral triangle with color
        for i in range(3):
            turtle.fillcolor(colors[i % len(colors)])  # Cycle through colors
            turtle.begin_fill()
            turtle.forward(size)
            turtle.left(120)
            turtle.end_fill()
    else:
        # Recursive case: Draw three smaller Sierpinski Triangles
        sierpinski_triangle(turtle, order - 1, size / 2)
        turtle.forward(size / 2)
        sierpinski_triangle(turtle, order - 1, size / 2)
        turtle.backward(size / 2)
        turtle.left(60)
        turtle.forward(size / 2)
        turtle.right(60)
        sierpinski_triangle(turtle, order - 1, size / 2)
        turtle.left(60)
        turtle.backward(size / 2)
        turtle.right(60)

# Position the turtle and draw the Sierpinski Triangle
t.penup()
t.goto(-200, -100)  # Adjust starting position as needed
t.pendown()

# Set the order and size of the initial triangle
order = 4  # Adjust the order as needed
size = 400  # Adjust the size as needed

sierpinski_triangle(t, order, size)

# Close the drawing window on click
screen.exitonclick()

