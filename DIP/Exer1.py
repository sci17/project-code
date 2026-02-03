import cv2 as cv
import numpy as np
import matplotlib.pyplot as plt

# Open video file
cap = cv.VideoCapture("Lance.mp4")

if not cap.isOpened():
    print("Failed to open video file!")
    exit()

# Initialize matplotlib interactive mode
plt.ion()
fig, axs = plt.subplots(2, 2, figsize=(8, 6))
plt.suptitle("Video Frame Outputs", fontsize=14)

# Initial images for each subplot
img_original = axs[0, 0].imshow(np.zeros((240, 320, 3), dtype=np.uint8))
axs[0, 0].set_title("Original")
axs[0, 0].axis('off')

img_gray = axs[0, 1].imshow(np.zeros((240, 320), dtype=np.uint8), cmap='gray', vmin=0, vmax=255)
axs[0, 1].set_title("Grayscale")
axs[0, 1].axis('off')

img_negative = axs[1, 0].imshow(np.zeros((240, 320, 3), dtype=np.uint8))
axs[1, 0].set_title("Negative")
axs[1, 0].axis('off')

axs[1, 1].axis('off')  # Empty cell

while cap.isOpened():
    ret, frame = cap.read()
    if not ret:
        print("✅ End of video stream.")
        break

    frame = cv.resize(frame, (320, 240))

    gray = cv.cvtColor(frame, cv.COLOR_BGR2GRAY)
    gray_rgb = cv.cvtColor(gray, cv.COLOR_GRAY2RGB)  # for 3-channel consistency
    negative = cv.bitwise_not(frame)

    # Convert BGR to RGB for matplotlib
    frame_rgb = cv.cvtColor(frame, cv.COLOR_BGR2RGB)
    negative_rgb = cv.cvtColor(negative, cv.COLOR_BGR2RGB)

    # Update plot images
    img_original.set_data(frame_rgb)
    img_gray.set_data(gray)
    img_gray.set_cmap('gray')
    img_gray.set_clim(0, 255)
    img_negative.set_data(negative_rgb)

    # Refresh plot
    plt.pause(0.001)

    if cv.waitKey(1) & 0xFF == ord('q'):
        print("Quit signal received.")
        break

cap.release()
plt.ioff()
plt.close()
cv.destroyAllWindows()
