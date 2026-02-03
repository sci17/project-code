import cv2
import numpy as np

# Open video file
cap = cv2.VideoCapture('Lance.mp4')

# Optional: define output video writer for a specific bit plane (e.g., bit 7)
frame_width = int(cap.get(cv2.CAP_PROP_FRAME_WIDTH))
frame_height = int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT))
fps = int(cap.get(cv2.CAP_PROP_FPS))

# Save only one bit plane, e.g., b7, for output
out = cv2.VideoWriter('bit_plane_7_output.mp4', cv2.VideoWriter_fourcc(*'mp4v'), fps, (frame_width, frame_height), isColor=False)

while cap.isOpened():
    ret, frame = cap.read()
    if not ret:
        break

    # Convert frame to grayscale
    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

    # Extract bit planes (0 to 7)
    bit_planes = []
    for i in range(8):
        bit_plane = np.uint8((gray >> i) & 1) * 255  # Scale up to see clearly
        bit_planes.append(bit_plane)

    # Display the most significant bit plane (bit 7) - you can change this
    b7 = bit_planes[7]
    cv2.imshow('Bit Plane 7', b7)

    # Save bit plane 7 to output video
    out.write(b7)

    # Press 'q' to stop
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

# Cleanup
cap.release()
out.release()
cv2.destroyAllWindows()
