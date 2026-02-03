import pygame
import math
import sys
import matplotlib.pyplot as plt
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
import numpy as np

pygame.init()


WIDTH, HEIGHT = 1000, 600
screen = pygame.display.set_mode((WIDTH, HEIGHT))
pygame.display.set_caption("Pendulum Motion with Graph")


CYAN = (0, 0, 0)
WHITE= (255, 255, 255)
RED = (255, 0, 0)

clock = pygame.time.Clock()


origin_x, origin_y = 400, 100  
length = 300 
angle = math.pi / 4  
angular_velocity = 0  
angular_acceleration = 0  
gravity = 0.98  
damping = 0.99  


time_step = 0.02
time_elapsed = 0
angle_history = []
time_history = []

def draw_pendulum(x, y):
    
    pygame.draw.line(screen, CYAN, (origin_x, origin_y), (x, y), 2)
    pygame.draw.circle(screen, RED, (x, y), 20)

def calculate_pendulum_position(angle):
    
    x = origin_x + length * math.sin(angle)
    y = origin_y + length * math.cos(angle)
    return int(x), int(y)

def plot_graph():
    
    fig, ax = plt.subplots(figsize=(4, 3), dpi=100)
    ax.plot(time_history, angle_history, color='blue')
    ax.set_title("Angular Displacement vs Time")
    ax.set_xlabel("Time (s)")
    ax.set_ylabel("Angle (rad)")
    ax.grid()

    
    canvas = FigureCanvas(fig)
    canvas.draw()
    renderer = canvas.get_renderer()
    raw_data = renderer.buffer_rgba()
    graph_surface = pygame.image.fromstring(bytes(raw_data), canvas.get_width_height(), "RGBA")
    plt.close(fig)
    return graph_surface


running = True
while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False

    
    angular_acceleration = (-gravity / length) * math.sin(angle)
    angular_velocity += angular_acceleration
    angular_velocity *= damping  
    angle += angular_velocity

    
    time_elapsed += time_step
    time_history.append(time_elapsed)
    angle_history.append(angle)
    if len(time_history) > 500:  
        time_history.pop(0)
        angle_history.pop(0)

    
    pendulum_x, pendulum_y = calculate_pendulum_position(angle)

   
    screen.fill(WHITE)
    draw_pendulum(pendulum_x, pendulum_y)

   
    graph_surface = plot_graph()
    screen.blit(graph_surface, (600, 50))

    pygame.display.flip()

   
    clock.tick(60)

pygame.quit()
sys.exit()
