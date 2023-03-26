from PyQt5.QtCore import Qt
from PyQt5.QtGui import QTextCharFormat, QFont
from PyQt5.QtWidgets import QApplication, QMainWindow, QTextEdit


class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()

        self.text_edit = QTextEdit()
        self.setCentralWidget(self.text_edit)

        # Define the sentences to be styled
        sentence1 = "This is a sentence in normal font.\n"
        sentence2 = "This is a sentence in italicized font.\n"
        sentence3 = "This is a sentence in bold font.\n\n"
        sentence4 = "This is a sentence in bold and italicized font."

        # Apply the desired styles to the sentences
        self.apply_text_format(self.text_edit, sentence1, QFont.Normal)
        self.apply_text_format(self.text_edit, sentence2, QFont.StyleItalic)
        self.apply_text_format(self.text_edit, sentence3, QFont.Bold)
        self.apply_text_format(self.text_edit, sentence4, QFont.Bold | QFont.StyleItalic)

    def apply_text_format(self, text_edit, text, font_weight):
        # Create a QTextCharFormat object and apply the desired formatting
        text_format = QTextCharFormat()
        text_format.setFontWeight(font_weight)
        text_edit.setCurrentCharFormat(text_format)

        # Insert the styled text into the QTextEdit
        text_edit.insertPlainText(text)


if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    app.exec_()
