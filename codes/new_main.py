import cv2
import numpy as np
 
# Initialize the video capture object for webcam
cap = cv2.VideoCapture(0)
 
# Create a list to store the detected coordinates
detected_coordinates = [[]]
detected_in_last_frame = False
 
# Create a blank image of size 500x500 and 3 channels (RGB)
img = np.zeros((500, 500, 3), np.uint8)
 
while True:
    # Read the frame from the webcam
    ret, frame = cap.read()
 
    # Calculate the center coordinates
    center_x = 251
    center_y = 249
 
    # Define the range of rows and columns where the mask will be applied
    start_row = center_y - 120
    end_row = center_y + 120
    start_col = center_x - 50
    end_col = center_x + 50
 
    # Define the lower and upper bounds for green color in HSV color space
    lower_green = np.array([40, 50, 50])  # Lower threshold for green color
    upper_green = np.array([80, 255, 255])  # Upper threshold for green color
 
    # Convert the frame to HSV color space
    hsv_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)
 
    # Create a mask for the green color range
    green_mask = cv2.inRange(hsv_frame, lower_green, upper_green)
 
    # Create a blank mask with the same shape as the frame
    mask = np.zeros(frame.shape[:2], dtype=np.uint8)
 
    # Apply the mask to the range of selected rows and columns
    mask[start_row:end_row, start_col:end_col] = green_mask[start_row:end_row, start_col:end_col]
 
    # Invert the mask
    inverted_mask = cv2.bitwise_not(mask)
 
    # Bitwise-AND with the original frame to retain the rest of the frame
    extracted_pixels = cv2.bitwise_and(frame, frame, mask=inverted_mask)
 
    # Convert the retained frame to grayscale
    gray_frame = cv2.cvtColor(extracted_pixels, cv2.COLOR_BGR2GRAY)
 
    # Apply thresholding to the grayscale frame
    _, thresholded_frame = cv2.threshold(gray_frame, 200, 255, cv2.THRESH_BINARY)
 
    # Find contours in the thresholded frame
    contours, _ = cv2.findContours(thresholded_frame, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
 
    # Iterate over the contours and calculate the centers
    for contour in contours:
        # Calculate the center of the contour
        M = cv2.moments(contour)
        if M['m00'] != 0:
            cx = int(M['m10'] / M['m00'])
            cy = int(M['m01'] / M['m00'])
            # Check the contour area to filter based on size
            if cv2.contourArea(contour) > 100:  # Adjust the size threshold as needed
                if not detected_in_last_frame:
                    detected_coordinates.append([])
                current_coordinates = detected_coordinates[-1]
                current_coordinates.append((cx, cy))
                cv2.circle(frame, (cx, cy), 3, (0, 0, 255), -1)  # Draw a red circle at the center
                cv2.putText(frame, f"({cx}, {cy})", (cx + 5, cy - 5), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 255), 2)
                detected_in_last_frame = True
    else:
        detected_in_last_frame = False
 
    # Display the frame
    cv2.imshow('Webcam', frame)
 
    # Exit the loop if 'q' is pressed
    if cv2.waitKey(1) == ord('q'):
        break
 
# Draw lines for each detected drawing action
for coordinates in detected_coordinates:
    for i in range(1, len(coordinates)):
        cv2.line(img, coordinates[i-1], coordinates[i], (0, 255, 0), 2)
 
cv2.imshow('Flipped Line Image', img)
 # Specify the file path and name for saving the image
image_path = '/home/pi/Desktop/test_trial/flower.jpg'  # Change the path to your desired desktop location
 
# Save the 'img' file as a JPG image
cv2.imwrite(image_path, img)
 
img_saved = cv2.imread(image_path)
 
 
img_flipped = cv2.flip(img_saved,-1)
 
cv2.imwrite(image_path,img_flipped)
 
 
# Release the resources and close the windows
cap.release()
cv2.destroyAllWindows()