import pygame
import math

# Dictionary of common color names mapped to RGB values
COLORS = {
    "red": (255, 0, 0),
    "blue": (0, 0, 255),
    "yellow": (255, 255, 0),
    # Add more colors as needed
}

class MovingCircle:
    def __init__(self, screen, color_name, size, start_x, start_y):
        self.screen = screen
        self.color = COLORS.get(color_name, (255, 255, 255))  # Default to white if color is not found
        self.size = size
        self.position = pygame.Vector2(start_x, start_y)
        self.active = True  # Flag to indicate if the player is active
        self.dt = 0

    def move(self, dt):
        if not self.active:
            return  # Don't move if player is inactive

        keys = pygame.key.get_pressed()
        if keys[self.controls['up']]:
            self.position.y -= 300 * dt
        if keys[self.controls['down']]:
            self.position.y += 300 * dt
        if keys[self.controls['left']]:
            self.position.x -= 300 * dt
        if keys[self.controls['right']]:
            self.position.x += 300 * dt

    def draw(self):
        if self.active:
            pygame.draw.circle(self.screen, self.color, self.position, self.size)

    def check_collision(self, other_circle):
        if not self.active or not other_circle.active:
            return False  # Don't check for collision if either player is inactive

        distance = math.sqrt((self.position.x - other_circle.position.x) ** 2 + (self.position.y - other_circle.position.y) ** 2)
        if distance < self.size + other_circle.size:
            return True
        return False

# Pygame setup
pygame.init()
screen = pygame.display.set_mode((1280, 720))
clock = pygame.time.Clock()
running = True

# Create player objects
player1 = MovingCircle(screen, "red", 40, 200, 200, {'up': pygame.K_w, 'down': pygame.K_s, 'left': pygame.K_a, 'right': pygame.K_d})
player2 = MovingCircle(screen, "blue", 40, 800, 400, {'up': pygame.K_UP, 'down': pygame.K_DOWN, 'left': pygame.K_LEFT, 'right': pygame.K_RIGHT})

players = [player1, player2]

while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False

    screen.fill((128, 128, 128))

    for player in players:
        player.move(player.dt)
        player.draw()

    # Check for collisions
    if player1.check_collision(player2):
        player2.active = False  # Deactivate player2 when a collision occurs

    pygame.display.flip()
    for player in players:
        player.dt = clock.tick(60) / 1000

pygame.quit()
