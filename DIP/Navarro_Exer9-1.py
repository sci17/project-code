import matplotlib.pyplot as plt
from skimage import io, color, filters

# Load the image
image = io.imread('Lance.jpg')

# If the image has an alpha channel (4th channel), remove it
if image.shape[-1] == 4:
    image = image[..., :3]

# Display the original image
plt.subplot(4, 2, 1)
plt.imshow(image)
plt.title('Original Image')
plt.axis('off')

# Convert the image to grayscale
gray_image = color.rgb2gray(image)
plt.subplot(4, 2, 2)
plt.imshow(gray_image, cmap='gray')
plt.title('Gray Image')
plt.axis('off')

# Apply Laplacian filter
laplacian_filter = filters.laplace(gray_image)
plt.subplot(4, 2, 3)
plt.imshow(laplacian_filter, cmap='gray')
plt.title('Laplacian')
plt.axis('off')

# Apply Sobel edge detection
sobel_edges = filters.sobel(gray_image)
plt.subplot(4, 2, 4)
plt.imshow(sobel_edges, cmap='gray')
plt.title('Sobel')
plt.axis('off')

# Apply Prewitt edge detection
prewitt_edges = filters.prewitt(gray_image)
plt.subplot(4, 2, 5)
plt.imshow(prewitt_edges, cmap='gray')
plt.title('Prewitt')
plt.axis('off')

# Apply Roberts edge detection
roberts_edges = filters.roberts(gray_image)
plt.subplot(4, 2, 6)
plt.imshow(roberts_edges, cmap='gray')
plt.title('Roberts')
plt.axis('off')

# Apply Sobel edge detection - horizontal
sobel_horizontal_edges = filters.sobel_h(gray_image)
plt.subplot(4, 2, 7)
plt.imshow(sobel_horizontal_edges, cmap='gray')
plt.title('Sobel Horizontal')
plt.axis('off')

# Apply Sobel edge detection - vertical
sobel_vertical_edges = filters.sobel_v(gray_image)
plt.subplot(4, 2, 8)
plt.imshow(sobel_vertical_edges, cmap='gray')
plt.title('Sobel Vertical')
plt.axis('off')

# Display all plots
plt.tight_layout()
plt.show()
