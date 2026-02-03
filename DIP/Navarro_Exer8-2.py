import numpy as np
import matplotlib.pyplot as plt
from skimage import io, color
from scipy.ndimage import uniform_filter, gaussian_filter

# Load the image with error handling
try:
    img = io.imread('Lance.jpg')
except FileNotFoundError:
    raise FileNotFoundError("The image file 'Lance.jpg' was not found.")

# Convert to grayscale
gray_img = color.rgb2gray(img).astype(float)

# Apply average filter (3x3)
filtered_3x3 = uniform_filter(gray_img, size=3)

# Apply Gaussian filter (10x10 kernel)
filtered_10x10 = gaussian_filter(gray_img, sigma=5)  # Gaussian filter with sigma for smoother blur

# Plotting
plt.figure(figsize=(12, 12))

plt.subplot(2, 2, 1)
plt.imshow(img)
plt.title('Original Image')
plt.axis('on')

plt.subplot(2, 2, 2)
plt.imshow(gray_img, cmap='gray')
plt.title('Grayscale Image')
plt.axis('on')

plt.subplot(2, 2, 3)
plt.imshow(filtered_3x3, cmap='gray')
plt.title('3x3 Average Filter')
plt.axis('on')

plt.subplot(2, 2, 4)
plt.imshow(filtered_10x10, cmap='gray')
plt.title('10x10 Gaussian Blur')
plt.axis('on')

plt.tight_layout()
plt.show()
