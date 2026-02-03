import numpy as np
import matplotlib.pyplot as plt
from skimage import io

# Load the image
image = io.imread('Lance.jpg', as_gray=True)

# Define DPCM function
def dpcm_encode(image):
    # Initialize output array with zeros
    encoded_image = np.zeros_like(image)
    # Loop through each pixel row by row
    for i in range(image.shape[0]):
        # For the first pixel in each row, encode as is
        encoded_image[i, 0] = image[i, 0]
        # For subsequent pixels, encode the difference from the previous pixel
        for j in range(1, image.shape[1]):
            encoded_image[i, j] = image[i, j] - image[i, j - 1]
    return encoded_image

# Perform DPCM encoding
encoded_image = dpcm_encode(image)

# Display the original and encoded images
plt.figure(figsize=(10, 5))
plt.subplot(1, 2, 1)
plt.imshow(image, cmap='gray')
plt.title('Original Image')
plt.axis('off')
plt.subplot(1, 2, 2)
plt.imshow(encoded_image, cmap='gray')
plt.title('Encoded Image (DPCM)')
plt.axis('off')
plt.show()