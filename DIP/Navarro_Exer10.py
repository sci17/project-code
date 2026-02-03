import numpy as np
import matplotlib.pyplot as plt
from skimage import io
from scipy.fftpack import dct, idct
# Load the image
image = io.imread('Lance.jpg', as_gray=True)
# Perform 2D DCT
dct_image = dct(dct(image, axis=0, norm='ortho'), axis=1, norm='ortho')
# Compression ratio (keep only top-left corner coefficients)
compression_ratio = 0.1
# Determine the threshold for keeping coefficients
threshold = np.percentile(np.abs(dct_image), 100 - compression_ratio * 100)
# Mask the coefficients below the threshold
masked_dct_image = dct_image * (np.abs(dct_image) > threshold)
# Reconstruct the image using inverse DCT
reconstructed_image = idct(idct(masked_dct_image, axis=0, norm='ortho'), axis=1, norm='ortho')
# Display the original and reconstructed images
plt.figure(figsize=(10, 5))
plt.subplot(1, 2, 1)
plt.imshow(image, cmap='gray')
plt.title('Original Image')
plt.axis('off')
plt.subplot(1, 2, 2)
plt.imshow(reconstructed_image, cmap='gray')
plt.title('Reconstructed Image (Compressed)')
plt.axis('off')
plt.show()