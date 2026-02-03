import cv2
import numpy as np
import matplotlib.pyplot as plt

# Step 1: Read the Image
image = cv2.imread('Lance.jpg', cv2.IMREAD_GRAYSCALE)

# Step 2: Determine Intensity Levels
low_threshold = 100
high_threshold = 150

# Step 3: Apply Intensity Slicing

# Binary Slicing
binary_slice = np.where((image >= low_threshold) & (image <= high_threshold), 255, 0).astype(np.uint8)

# Partial Enhancement
partial_enhance = np.copy(image)
partial_enhance = np.where((partial_enhance >= low_threshold) & (partial_enhance <= high_threshold), 255, partial_enhance)

# Displaying the images
plt.figure(figsize=(12, 8))

plt.subplot(3, 2, 1)
plt.imshow(image, cmap='gray')
plt.title('Original Image')
plt.axis('off')

plt.subplot(3, 2, 2)
_, thresh_img = cv2.threshold(image, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)
plt.imshow(thresh_img, cmap='gray')
plt.title('Image graythresh')
plt.axis('off')

# Display slices for different levels
for i, level in enumerate([0.2, 0.4, 0.6, 0.8], start=3):
    level_slice = level * binary_slice
    plt.subplot(3, 2, i)
    plt.imshow(level_slice, cmap='gray')
    plt.title(f'{level} Slice')
    plt.axis('off')

plt.subplot(3, 2, 6)
plt.imshow(partial_enhance, cmap='gray')
plt.title('Partial Enhancement')
plt.axis('off')

plt.tight_layout()
plt.show()
