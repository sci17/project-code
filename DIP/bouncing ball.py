import pygame
import random

class Bouncing_ball:
    def __init__(self, screen, color, size, pos_x, pos_y):
        self.color = color
        self.screen = screen
        self.size = size
        self.position = pygame.Vector2(pos_x,pos_y)
        self.speedx = random.randint(1,101)
        self.speedy = random.randint(1,101)
        self.active= True
        self.dt= 0

    def move (self,dt):
        if not self.active:
            return

        self.position.y += self.speedy
        self.position.x += self.speedx
        if self.position.y >= 720:
            self.speedy = -self.speedy
        if self.position.y <= 0:
            self.speedy = -self.speedy
        if self.position.x >= 1280:
            self.speedx = -self.speedx
        if self.position.x  <= 0:
            self.speedx = -self.speedx

    def draw (self):
        pygame.draw.circle(self.screen, self.color, self.position,self.size)


    def fps(self):
        pygame.time.delay(random.randint(-15,1))

pygame.init()
screen = pygame.display.set_mode((1280, 720))
clock = pygame.time.Clock()
running = True

b1= Bouncing_ball(screen, "red", random.randint(20, 150), random.randint(1, 1281), random.randint(1, 721))
b2= Bouncing_ball(screen, "orange", random.randint(20, 150), random.randint(1, 1281), random.randint(1, 721))
b3= Bouncing_ball(screen, "yellow", random.randint(20, 150), random.randint(1, 1281), random.randint(1, 721))
b4= Bouncing_ball(screen, "green", random.randint(20, 150), random.randint(1, 1281), random.randint(1, 721))
b5= Bouncing_ball(screen, "blue", random.randint(20, 150), random.randint(1, 1281), random.randint(1, 721))
b6= Bouncing_ball(screen, "indigo", random.randint(20, 150), random.randint(1, 1281), random.randint(1, 721))
b7= Bouncing_ball(screen, "violet", random.randint(20, 150), random.randint(1, 1281), random.randint(1, 721))
b8= Bouncing_ball(screen, "pink", random.randint(20, 150), random.randint(1, 1281), random.randint(1, 721))
b9= Bouncing_ball(screen, "magenta", random.randint(20, 150), random.randint(1, 1281), random.randint(1, 721))
b10= Bouncing_ball(screen, "cyan", random.randint(20, 150), random.randint(1, 1281), random.randint(1, 721))

balls = [b1,b2,b3,b4,b5,b6,b7,b8,b9,b10]

while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False

    screen.fill("black")

    for bounce in balls:
        bounce.move(bounce.dt)
        bounce.draw()
        bounce.fps()

    pygame.display.flip()
    for bounce in balls:
        bounce.dt = clock.tick(60) / 1000

pygame.quit()