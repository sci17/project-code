import heapq
import numpy as np
import matplotlib.pyplot as plt
from collections import defaultdict

# Load the image
image = plt.imread('Lance.jpg')

# Convert the image to grayscale
gray_image = np.dot(image[..., :3], [0.2989, 0.5870, 0.1140])

# Flatten the image
flattened_image = gray_image.flatten().astype(int)  # Ensure the data is in integer form

# Function to generate Huffman encoding
def huffman_encoding(data):
    freq_dict = defaultdict(int)
    for value in data:
        freq_dict[value] += 1
    heap = [[weight, [symbol, ""]] for symbol, weight in freq_dict.items()]
    heapq.heapify(heap)
    
    while len(heap) > 1:
        lo = heapq.heappop(heap)
        hi = heapq.heappop(heap)
        for pair in lo[1:]:
            pair[1] = '0' + pair[1]
        for pair in hi[1:]:
            pair[1] = '1' + pair[1]
        heapq.heappush(heap, [lo[0] + hi[0]] + lo[1:] + hi[1:])
    
    huffman_dict = dict(sorted(heapq.heappop(heap)[1:], key=lambda p: (len(p[-1]), p)))
    encoded_data = ''.join(huffman_dict[value] for value in data)
    return encoded_data, huffman_dict

# Function to decode Huffman encoded data
def huffman_decoding(encoded_data, huffman_dict):
    reverse_dict = {v: k for k, v in huffman_dict.items()}
    current_code = ""
    decoded_data = []
    for bit in encoded_data:
        current_code += bit
        if current_code in reverse_dict:
            decoded_data.append(reverse_dict[current_code])
            current_code = ""
    return decoded_data

# Perform Huffman encoding
encoded_data, huffman_dict = huffman_encoding(flattened_image)

# Perform Huffman decoding (optional)
decoded_data = huffman_decoding(encoded_data, huffman_dict)

# Reshape the decoded data back to the original image shape
decoded_image = np.reshape(np.array(decoded_data, dtype=np.uint8), gray_image.shape)

# Display the original and decoded images
plt.figure(figsize=(10, 5))
plt.subplot(1, 2, 1)
plt.imshow(gray_image, cmap='gray')
plt.title('Original Image')
plt.axis('off')
plt.subplot(1, 2, 2)
plt.imshow(decoded_image, cmap='gray')
plt.title('Decoded Image (Huffman)')
plt.axis('off')
plt.show()
