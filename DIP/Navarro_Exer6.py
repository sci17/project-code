import numpy as np
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
from matplotlib.colors import LinearSegmentedColormap

# Load the image and convert to grayscale
image = mpimg.imread('cancercell.PNG')
image_gray = np.dot(image[..., :3], [0.2989, 0.5870, 0.1140])

# Convert image to double precision
image_double = np.double(image_gray)

# Compute 1-D FFT
f1 = np.fft.fft(image_double, axis=0)

# Compute 2-D FFT
f2 = np.fft.fftshift(f1)

# Define a custom colormap with equal visibility for white and black
cmap_data = [(0, 'black'), (0, 'white'), (1, 'black')]
cmap_custom = LinearSegmentedColormap.from_list('custom_cmap', cmap_data)

# Plot the results
plt.figure(figsize=(10, 10))

# Frequency Spectrum
plt.subplot(2, 2, 1)
plt.imshow(np.abs(f1), cmap=cmap_custom)
plt.title('Frequency Spectrum')

# Centered Spectrum
plt.subplot(2, 2, 2)
plt.imshow(np.abs(f2), cmap=cmap_custom)
plt.title('Centered Spectrum')

# Log-transformed magnitude spectrum
plt.subplot(2, 2, 3)
plt.imshow(np.abs(f2), cmap=cmap_custom)
plt.title('log(1+abs(f2))')

# Compute 2-D FFT directly from the original image
fft_result = np.fft.fft2(f1)
l1 = np.real(fft_result)

# 2-D FFT
plt.subplot(2, 2, 4)
plt.imshow(np.abs(f1), cmap=cmap_custom)
plt.title('2-D FFT')

plt.show()