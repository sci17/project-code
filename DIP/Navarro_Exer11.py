import cv2
import numpy as np
import matplotlib.pyplot as plt

# Load an image from file
image = cv2.imread('Lance.jpg')

# Check if the image was successfully loaded
if image is None:
    print("Error: Could not open or find the image.")
else:
    # Resize the image
    resize_width = 400
    resize_height = 300
    resized_image = cv2.resize(image, (resize_width, resize_height))
    
    # Rotate the image
    (h, w) = image.shape[:2]
    center = (w // 2, h // 2)
    M = cv2.getRotationMatrix2D(center, 45, 1.0)
    rotated_image = cv2.warpAffine(image, M, (w, h))
    
    # Translate the image
    tx, ty = 50, 25
    T = np.float32([[1, 0, tx], [0, 1, ty]])
    translated_image = cv2.warpAffine(image, T, (w, h))
    
    # Displaying the images using matplotlib
    plt.figure(figsize=(12, 8))

    plt.subplot(2, 2, 1)
    plt.imshow(cv2.cvtColor(image, cv2.COLOR_BGR2RGB))
    plt.title('Original Image')
    plt.axis('on')

    plt.subplot(2, 2, 2)
    plt.imshow(cv2.cvtColor(resized_image, cv2.COLOR_BGR2RGB))
    plt.title('Resized Image')
    plt.axis('on')

    plt.subplot(2, 2, 3)
    plt.imshow(cv2.cvtColor(rotated_image, cv2.COLOR_BGR2RGB))
    plt.title('Rotated Image')
    plt.axis('on')

    plt.subplot(2, 2, 4)
    plt.imshow(cv2.cvtColor(translated_image, cv2.COLOR_BGR2RGB))
    plt.title('Translated Image')
    plt.axis('on')

    plt.tight_layout()
    plt.show()
