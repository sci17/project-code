import cv2
import numpy as np
import matplotlib.pyplot as plt


image = cv2.imread('Lance.jpg')


image_rgb = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)


plt.subplot(4, 2, 1)
plt.imshow(image_rgb)
plt.title('Original Image')
plt.axis('on')
    
gray_image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)


plt.subplot(4, 2, 5)
plt.imshow(gray_image, cmap='gray')
plt.title('Gray Image')
plt.axis('on')

enhanced_image1 = cv2.normalize(gray_image, None, alpha=0, beta=200, norm_type=cv2.NORM_MINMAX)

plt.subplot(4, 2, 3)
plt.imshow(enhanced_image1, cmap='gray')
plt.title('Enhanced Image')
plt.axis('on')


in_range = np.array([50, 150])  
out_range = np.array([0, 255])  
enhanced_image2 = cv2.normalize(image_rgb, None, alpha=in_range[0], beta=in_range[1], norm_type=cv2.NORM_MINMAX)


plt.subplot(4, 2, 4)
plt.imshow(enhanced_image2)
plt.title('Enhanced Image 2')
plt.axis('on')


plt.subplot(4, 2, 7)
plt.hist(gray_image.ravel(), bins=256, range=[0, 256])
plt.title('Histogram of Gray Image')


equalized_image = cv2.equalizeHist(gray_image)


plt.subplot(4, 2, 6)
plt.imshow(equalized_image, cmap='gray')
plt.title('Equalized Image')
plt.axis('on')


plt.subplot(4, 2, 8)
plt.hist(equalized_image.ravel(), bins=256, range=[0, 256])
plt.title('Histogram of Equalized Image')


plt.tight_layout()
plt.show()
