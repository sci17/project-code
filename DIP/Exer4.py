import cv2
import numpy as np

def enhance_frame_opencv(frame):
    """Applies enhancements to a single video frame and returns the results for OpenCV display."""
    gray_image = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    enhanced_image1 = cv2.normalize(gray_image, None, alpha=0, beta=200, norm_type=cv2.NORM_MINMAX).astype(np.uint8)
    image_rgb_norm = cv2.normalize(cv2.cvtColor(frame, cv2.COLOR_BGR2RGB), None, alpha=50, beta=150, norm_type=cv2.NORM_MINMAX).astype(np.uint8)
    enhanced_image2_bgr = cv2.cvtColor(image_rgb_norm, cv2.COLOR_RGB2BGR) # Convert back to BGR for OpenCV display
    equalized_image = cv2.equalizeHist(gray_image)
    return frame, gray_image, enhanced_image1, enhanced_image2_bgr, equalized_image

if __name__ == "__main__":
    video_path = input("Enter the path to your video file: ")
    cap = cv2.VideoCapture(video_path)

    if not cap.isOpened():
        print("Error: Could not open video.")
        exit()

    while True:
        ret, frame = cap.read()
        if not ret:
            print("End of video.")
            break

        original, gray, enhanced1, enhanced2, equalized = enhance_frame_opencv(frame)

        cv2.imshow('Original', original)
        cv2.imshow('Grayscale', gray)
        cv2.imshow('Enhanced (0-200)', enhanced1)
        cv2.imshow('Enhanced (50-150 to 0-255)', enhanced2)
        cv2.imshow('Equalized', equalized)

        if cv2.waitKey(25) & 0xFF == ord('q'):
            break

    cap.release()
    cv2.destroyAllWindows()