import cv2
import numpy as np
import matplotlib.pyplot as plt
from skimage.color import rgb2gray
from skimage.filters import sobel

# ------------------- Video Capture ------------------------
cap = cv2.VideoCapture('Lance.mp4') 

if not cap.isOpened():
    print("❌ Failed to open video file!")
    exit()

# Setup matplotlib interactive mode
plt.ion()
fig, ax = plt.subplots()
frame_height = 240
frame_width = 320


# initial image 
img_display = ax.imshow(np.zeros((frame_height, frame_width)), cmap='gray', vmin=0, vmax=1)
plt.title("Sobel Edge Detection (skimage)")
plt.axis('off')

while True:
    ret, frame = cap.read()
    if not ret:
        print("✅ Video finished or can't receive frame. Exiting...")
        break

    # Resize frame
    frame = cv2.resize(frame, (frame_width, frame_height))

    # Converting RGB for skimage
    rgb = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)

    # Grayscale using skimage and Sobel edge detection
    gray = rgb2gray(rgb)
    sobel_edges = sobel(gray)  # Already normalized to [0, 1] float

    # Update plot
    img_display.set_data(sobel_edges)
    fig.canvas.flush_events()
    plt.pause(0.001)

    # Optional break via keypress (use OpenCV window)
    if cv2.waitKey(1) & 0xFF == ord('q'):
        print("🛑 Exiting on user request.")
        break

# Cleanup
cap.release()
plt.ioff()
plt.close()
cv2.destroyAllWindows()

