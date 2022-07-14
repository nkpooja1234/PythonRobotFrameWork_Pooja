# C:\Users\00003983\development\Day1PythonPgm\ReadValueFromNotepad.txt

class ReadNotepad:

    def ReadFromNotePad1(self):
        a = open("C:/Users/00003983/development/Day1PythonPgm/ReadValueFromNotepad.txt", "r")
        print(a.read())

    def appendToNote(self, mappedLine):
        a = open("C:/Users/00003983/development/Day1PythonPgm/ReadValueFromNotepad.txt", "a")
        a.write(mappedLine)
        a.close()

    def appendToNoteToInteger(self, FinalValue):
        for x in range(FinalValue):
            a = open("C:/Users/00003983/development/Day1PythonPgm/ReadValueFromNotepad.txt", "a")
            a.write(str(x))
            a.close()


obj = ReadNotepad()
# obj.ReadFromNotePad1()
# obj.appendToNote("Tommorow will start selenium xpath")
obj.appendToNoteToInteger(50)
