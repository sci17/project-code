import numpy as np
import matplotlib.pyplot as plt
from skimage import io, color, filters
from scipy.signal import convolve2d

# Load the image
I = io.imread('Lance.jpg')

# Convert to grayscale
I = color.rgb2gray(I)

# Define convolution kernels
a = np.array([[0.001, 0.001, 0.001],
              [0.001, 0.001, 0.001],
              [0.001, 0.001, 0.001]])

b = np.array([[0.005, 0.005, 0.005],
              [0.005, 0.005, 0.005],
              [0.005, 0.005, 0.005]])

# Apply convolution
R = convolve2d(I, a, mode='same')
R1 = convolve2d(I, b, mode='same')

# Plotting
plt.figure(figsize=(10, 10))

plt.subplot(2, 2, 1)
plt.imshow(I, cmap='gray')
plt.title('Original Image')

plt.subplot(2, 2, 2)
plt.imshow(R, cmap='gray')
plt.title('Filtered Image')

plt.subplot(2, 2, 3)
plt.imshow(R1, cmap='gray')
plt.title('Filtered Image 2')

plt.show()
