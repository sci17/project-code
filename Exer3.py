import cv2
import numpy as np

# Open the video file
cap = cv2.VideoCapture('Lance.mp4')

# Get video properties
frame_width = int(cap.get(cv2.CAP_PROP_FRAME_WIDTH))
frame_height = int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT))
fps = int(cap.get(cv2.CAP_PROP_FPS))

# Define codec and create VideoWriter to save output
out = cv2.VideoWriter('processed_video.mp4', cv2.VideoWriter_fourcc(*'mp4v'), fps, (frame_width, frame_height), isColor=False)

while cap.isOpened():
    ret, frame = cap.read()
    if not ret:
        break

    # Convert to grayscale
    input_image = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

    # Linear transformation
    a = 1.5
    b = 50
    linear_scaled_image = cv2.convertScaleAbs(input_image, alpha=a, beta=b)

    # Logarithmic transformation
    c = 1
    log_transformed_image = c * np.log1p(input_image.astype(np.float32))
    log_transformed_image = cv2.normalize(log_transformed_image, None, 0, 255, cv2.NORM_MINMAX)
    log_transformed_image = log_transformed_image.astype(np.uint8)

    # Power-law transformation
    gamma = 0.5
    power_law_transformed_image = c * (input_image.astype(np.float32) ** gamma)
    power_law_transformed_image = cv2.normalize(power_law_transformed_image, None, 0, 255, cv2.NORM_MINMAX)
    power_law_transformed_image = power_law_transformed_image.astype(np.uint8)

    # Translation
    tx, ty = 50, 30
    rows, cols = input_image.shape
    translation_matrix = np.float32([[1, 0, tx], [0, 1, ty]])
    translated_image = cv2.warpAffine(input_image, translation_matrix, (cols, rows))

    # Rotation
    angle = 30
    rotation_matrix = cv2.getRotationMatrix2D((cols / 2, rows / 2), angle, 1)
    rotated_image = cv2.warpAffine(input_image, rotation_matrix, (cols, rows))

    # Scaling
    scale_factor = 1.5
    scaled_image = cv2.resize(input_image, None, fx=scale_factor, fy=scale_factor)
    # Resize back to original size for consistent video output
    scaled_image = cv2.resize(scaled_image, (cols, rows))

    # Affine transformation
    a, b, c_, d = 0.5, 0.3, -100, 0.8
    tx, ty = 50, -20
    affine_matrix = np.float32([[a, b, tx], [c_, d, ty]])
    affine_transformed_image = cv2.warpAffine(input_image, affine_matrix, (cols, rows))

    # Choose one to write to the video (e.g., rotated_image)
    output_frame = rotated_image

    # Write the frame to the output video
    out.write(output_frame)

    # Optional: show the frame being processed
    cv2.imshow('Processed Frame', output_frame)
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

# Cleanup
cap.release()
out.release()
cv2.destroyAllWindows()
