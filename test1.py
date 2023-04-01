from PyQt5.QtWidgets import QApplication, QMainWindow, QFileDialog

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()

        self.initUI()

    def initUI(self):
        # Create a menu bar
        menubar = self.menuBar()

        # Create a File menu
        fileMenu = menubar.addMenu('File')

        # Create a Save action
        saveAction = fileMenu.addAction('Save')
        saveAction.triggered.connect(self.saveFolderDialog)

    def saveFolderDialog(self):
        # Create a QFileDialog object
        options = QFileDialog.Options()
        options |= QFileDialog.DontUseNativeDialog
        folderName = QFileDialog.getExistingDirectory(self, "Select Folder", options=options)

        if folderName:
            # Save the file to the selected folder
            with open(folderName + '/example.txt', 'w') as file:
                file.write("Hello, World!")

if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    app.exec_()
