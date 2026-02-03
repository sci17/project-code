
import pygame
import random

pygame.init()

window_size = (900, 800)

screen = pygame.display.set_mode(window_size)

pygame.display.set_caption('Bouncing Balls')

colors = [(255, 0, 255), (0, 255, 0), (0, 0, 255)]
balls = []
for color in colors:
    for i in range(4):
        if color == (255, 0, 255):  # Magenta
            r = random.randint(window_size[0] - 200, window_size[0] - 20)  # Top right
            g = random.randint(1, 380)  # Top right
        elif color == (0, 255, 255):  # cyan
            r = random.randint((window_size[0] / 2) - 300, (window_size[0] / 2) + 300)  # Bottom center
            g = random.randint(450, 780)
        else:  # Blue balls
            r = random.randint(20, 350)  # Top left
            g = random.randint(1, 350)
        vx = random.uniform(-3, +3,)
        vy = random.uniform(-3, +3,)
        balls.append((r, g, vx, vy, color))


radius = 20

running = True
while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False


    for i in  range(len(balls)):
        x, y, vx, vy, color = balls[i]
        x += vx
        y += vy
        if x < radius or x > window_size[0] - radius:
            vx = -vx
        if y < radius or y > window_size[1] - radius:
            vy = -vy
        balls[i] = (x, y, vx, vy, color)


    for i in range(len(balls)):
        for j in range(i + 1, len(balls)):
            x1, y1, vx1, vy1, color1 = balls[i]
            x2, y2, vx2, vy2, color2 = balls[j]
            dx = x2 - x1
            dy = y2 - y1
            d = (dx * 2 + dy * 2) ** 0.5
            if d < (2 * radius) - 1:
                # Update the colors of the balls that are involved in the collision
                if color1 == (255, 0, 255) and color2 == (255, 0, 255):
                    color2 = (255, 0, 255)
                elif color1 == (0, 255, 0) and color2 == (0, 255, 0):
                    color2 = (0, 255, 0)
                elif color1 == (0, 0, 255) and color2 == (0, 0, 255):
                    color2 = (0, 0, 255)
                vx1, vy1, vx2, vy2 = vx2, vy2, vx1, vy1
                balls[i] = (x1, y1, vx1, vy1, color1)
                balls[j] = (x2, y2, vx2, vy2, color2)

    screen.fill((225, 225, 225))

    for x, y, vx, vy, color in balls:
        pygame.draw.circle(screen, color, (int(x), int(y)), radius)


    pygame.display.flip()


pygame.quit()