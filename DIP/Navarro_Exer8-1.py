import numpy as np
import matplotlib.pyplot as plt
from skimage import io, color, util, filters
from scipy.ndimage import median_filter

# Load the image
I = io.imread('Lance.jpg')

# Convert to grayscale using the luminance method
K = color.rgb2gray(I)

# Add salt and pepper noise
J = util.random_noise(K, mode='s&p', amount=0.05)

# Apply median filter (3x3)
f = filters.median(J)

# Apply median filter (10x10)
f1 = median_filter(J, size=10)

# Plotting
plt.figure(figsize=(10, 10))

plt.subplot(3, 2, 1)
plt.imshow(I)
plt.title('Original Image')

plt.subplot(3, 2, 2)
plt.imshow(K, cmap='gray')
plt.title('Gray Image')

plt.subplot(3, 2, 3)
plt.imshow(J, cmap='gray')
plt.title('Noise Added Image')

plt.subplot(3, 2, 4)
plt.imshow(f, cmap='gray')
plt.title('3x3 Image')

plt.subplot(3, 2, 5)
plt.imshow(f1, cmap='gray')
plt.title('10x10 Image')

plt.show()
