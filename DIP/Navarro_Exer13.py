import cv2
import numpy as np
import matplotlib.pyplot as plt

# Load the image
image = cv2.imread('Lance.jpg')

# Check if the image is loaded properly
if image is None:
    raise FileNotFoundError("Error: Could not open or find the image.")

# Convert from BGR to RGB
image_rgb = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)

# Convert to Grayscale
gray_image = cv2.cvtColor(image_rgb, cv2.COLOR_RGB2GRAY)

# Apply Canny Edge Detection
canny_edges = cv2.Canny(gray_image, 100, 200)

# Resize the image
width, height = 300, 300  # Example dimensions for resizing
resized_image = cv2.resize(image_rgb, (width, height))

# Rotate the image
(h, w) = image_rgb.shape[:2]
center = (w // 2, h // 2)
M = cv2.getRotationMatrix2D(center, 45, 1.0)
rotated_image = cv2.warpAffine(image_rgb, M, (w, h))

# Translate the image
tx, ty = 100, 50  # Shift right by 100 pixels and down by 50 pixels
T = np.float32([[1, 0, tx], [0, 1, ty]])
translated_image = cv2.warpAffine(image_rgb, T, (w, h))

# Display the images
plt.figure(figsize=(12, 8))

plt.subplot(2, 3, 1)
plt.imshow(image_rgb)
plt.title('Original Image')
plt.axis('on')

plt.subplot(2, 3, 2)
plt.imshow(gray_image, cmap='gray')
plt.title('Grayscale Image')
plt.axis('on')

plt.subplot(2, 3, 3)
plt.imshow(canny_edges, cmap='gray')
plt.title('Canny Edges')
plt.axis('on')

plt.subplot(2, 3, 4)
plt.imshow(resized_image)
plt.title('Resized Image')
plt.axis('on')

plt.subplot(2, 3, 5)
plt.imshow(rotated_image)
plt.title('Rotated Image')
plt.axis('on')

plt.subplot(2, 3, 6)
plt.imshow(translated_image)
plt.title('Translated Image')
plt.axis('on')

plt.tight_layout()
plt.show()
