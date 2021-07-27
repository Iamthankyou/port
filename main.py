from flask import Flask, render_template, request,jsonify, abort, send_file
from keras.preprocessing.image import img_to_array
from keras.models import load_model
import cv2
import numpy as np

from flask_cors import CORS, cross_origin

face_classifier = cv2.CascadeClassifier('./haarcascade_frontalface_default.xml')

from tensorflow.keras.models import load_model
from tensorflow.keras.preprocessing import image
import numpy as np
import os
import cv2
import numpy as np
from os import listdir
from os.path import isfile, join
from tensorflow.keras.preprocessing.image import img_to_array

face_classifier = cv2.CascadeClassifier('./haarcascade_frontalface_default.xml')

from tensorflow.keras.models import load_model

classifier = load_model("./scale_6.h5")

class_labels = ['angry', 'disgust', 'fear', 'happy', 'sad', 'surprise', 'neutral', 'contempt']

def face_detector(img):
    # Convert image to grayscale
    gray = cv2.cvtColor(img.copy(), cv2.COLOR_BGR2GRAY)
    faces = face_classifier.detectMultiScale(gray, 1.2, 4)
    if faces is ():
        return (0, 0, 0, 0), np.zeros((48, 48), np.uint8), img

    allfaces = []
    print(len(faces))
    rects = []
    for (x, y, w, h) in faces:
        cv2.rectangle(img, (x, y), (x + w, y + h), (255, 0, 0), 2)
        roi_gray = gray[y:y + h, x:x + w]
        roi_gray = cv2.resize(roi_gray, (48, 48), interpolation=cv2.INTER_AREA)
        allfaces.append(roi_gray)
        rects.append((x, w, y, h))
    return rects, allfaces, img

# Initializing flask application
app = Flask(__name__)
cors = CORS(app)

@app.route("/")
def main():
    return """
        Application is working
    """

@app.route('/uploader', methods=['GET', 'POST'])
def upload_file():
    if request.method == 'POST':
        f = request.files['file']
        f.save(f.filename)

        img = cv2.imread("./" + f.filename)
        # h,w = img.shape[:2]  #
        # img = cv2.resize(img,(int(w/10),int(h/10)))
        rects, faces, image = face_detector(img)

        i = 0
        for face in faces:
            roi = face.astype("float") / 255.0
            roi = img_to_array(roi)
            roi = np.expand_dims(roi, axis=0)

            preds = classifier.predict(roi)[0]
            print(preds)

            s = ""

            for j in range(0, 6):
                print(class_labels[j] + ":" + str(round(preds[j] * 100)))
                s += class_labels[j] + ":" + str(round(preds[j] * 100)) + "% "
            print(preds.argmax())

            label = class_labels[preds.argmax()] + " " + str(round(preds[preds.argmax()] * 100)) + "%"

            label_position = (rects[i][0], abs(rects[i][2] - 10))

            i += 1
            cv2.putText(image, label, label_position, cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)

            cv2.imwrite(f.filename,image)

        return send_file(f.filename, mimetype='image/gif')

@app.route("/about")
def postsPage():
    return render_template("about.html")


if __name__ == "__main__":
    app.run(debug=True)
