import mysql.connector
from datetime import datetime

db = mysql.connector.connect(
    host = 'localhost',
    user = 'root',
    password = 'root'
)

mycursor = db.cursor()

email = 'njeristacey270@gmail.com'

import os

# Get the path to the user's documents folder
documents_folder = os.path.join(os.path.expanduser("~"), "Documents")

# Create a file path within the documents folder
file_path = os.path.join(documents_folder, "example.txt")

# Write some text to the file
with open(file_path, "w") as f:
    f.write("Hello, world!")

def is_resume():
    try:
        with open("resume.docx", "rb") as fimename:
            a = 4
        return True

    except:
        return False


print(is_resume())



