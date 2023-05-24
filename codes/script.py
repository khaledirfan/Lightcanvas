import os
from firebase_admin import credentials, db, initialize_app

cred = credentials.Certificate("/home/pi/firebase/your-firebase-project-key.json")
initialize_app(cred, {"databaseURL": "https://your-firebase-project.firebaseio.com/"})



def upload_images(directory):
    for filename in os.listdir(directory):
        if filename.endswith(".jpg") or filename.endswith(".jpeg") or filename.endswith(".png"):
            filepath = os.path.join(directory, filename)
            with open(filepath, "rb") as file:
                image_data = file.read()
            # Upload the image to Firebase
            db.reference("/").child(filename).set(image_data)
            print(f"Uploaded {filename} successfully.")


image_directory = "/home/Desktop/Test_trial"
upload_images(image_directory)
