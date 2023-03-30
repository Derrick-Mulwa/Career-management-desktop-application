import mysql.connector
from datetime import datetime

db = mysql.connector.connect(
                user = "root",
                host = "localhost",
                password = "root")

mycursor = db.cursor()
email = "testing@gmail.com"

# mycursor.execute(f'SELECT skills FROM jujaworks.skills Where email_address = "{email}";')
# skills = [i for i in mycursor][0][0]
# print(skills)
# skills = skills.split(",")
#
# skills = [i.strip() for i in skills]
# skills_num = len(skills)
#
# if skills_num > 9:
#     skills_num = 9
#     # skills =
#
# print(skills)
# j = 0
# labels = [self.label_46, self.label_47, self.label_48, self.label_49, self.label_50, self.label_51, self.label_52, self.label_53, self.label_54]
#
# for i in labels:
#     i.setText(skills[j])
#     j += 1
from datetime import datetime

# date_string = "01-May-2019"
# datetime_obj = datetime.strptime(date_string, "%d-%B-%Y")
# new_date_string = datetime_obj.strftime("%Y-%m-%d")
#
# print(new_date_string) # Output: 2019-02-01
from PyQt5.QtWidgets import QApplication, QWidget, QScrollArea, QVBoxLayout, QPushButton
#
# class Example(QWidget):
#     def __init__(self):
#         super().__init__()
#         self.initUI()
#
#     def initUI(self):
#         # Create a QScrollArea and add some content to it
#         scroll_area = QScrollArea()
#         widget = QWidget()
#         layout = QVBoxLayout(widget)
#         for i in range(50):
#             layout.addWidget(QPushButton(str(i)))
#         scroll_area.setWidget(widget)
#
#         # Create a button to trigger scrolling
#         button = QPushButton('Scroll to bottom')
#         button.clicked.connect(lambda: scroll_area.verticalScrollBar().setValue(scroll_area.verticalScrollBar().maximum()))
#
#         # Add the scroll area and button to the main layout
#         main_layout = QVBoxLayout()
#         main_layout.addWidget(scroll_area)
#         main_layout.addWidget(button)
#         self.setLayout(main_layout)
#
# if __name__ == '__main__':
#     app = QApplication([])
#     example = Example()
#     example.show()
#     app.exec_()

skills = "Sewing, Bartending"
skill = "None"

print(skills + f', {skill}')
