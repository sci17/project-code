import cv2
import numpy as np
import matplotlib.pyplot as plt

# Load the image using OpenCV
img = cv2.imread('cancercell.PNG')

# Display the original image using Matplotlib
plt.subplot(2, 3, 1)
plt.imshow(cv2.cvtColor(img, cv2.COLOR_BGR2RGB))
plt.title('Original Image')
plt.axis('off')

# Convert the original image to grayscale using OpenCV
gray_img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

# Display the grayscale image using Matplotlib
plt.subplot(2, 3, 2)
plt.imshow(gray_img, cmap='gray')
plt.title('Gray Image')
plt.axis('off')

# Crop the grayscale image (example cropping)
cropped_img = gray_img[100:300, 100:300]

# Display the cropped image using Matplotlib
plt.subplot(2, 3, 3)
plt.imshow(cropped_img, cmap='gray')
plt.title('Cropped Image')
plt.axis('off')

# Adjust checkerboard patterns to have 8 boxes each side
checkerboard_1 = np.zeros((200, 200))
checkerboard_2 = np.zeros((200, 200))

for i in range(0, 200, 25):
    for j in range(0, 200, 25):
        if (i // 25 + j // 25) % 2 == 0:
            if j >= 5 * 25 and j < 8 * 25:  
                checkerboard_1[i:i+25, 100:] = 0   # Set right side to black
        else:
            checkerboard_1[i:i+25, j:j+25] = 255  # One side all black
            checkerboard_2[i:i+25, j:j+25] = 255  # Other side all white

# Ensure the last three boxes on the right side are also black
checkerboard_1[:, 175:] = 0 

# Simulation of an Image (Arithmetic & Logic Operation)
a = np.ones((40, 40))
b = np.zeros((40, 40))
c = np.concatenate((np.concatenate((a, b), axis=1), np.concatenate((b, a), axis=1)), axis=0)
d = np.concatenate((np.concatenate((b, b), axis=1), np.concatenate((a, a), axis=1)), axis=0)

A = 10 * (c + d)
M = np.multiply(c, d)
S = c - d
D = c / 4

# Display simulation results
plt.subplot(2, 3, 4)
plt.imshow(checkerboard_1, cmap='gray')
plt.title('Image1')
plt.axis('off')

plt.subplot(2, 3, 5)
plt.imshow(checkerboard_2, cmap='gray')
plt.title('Image2')
plt.axis('off')

plt.show()