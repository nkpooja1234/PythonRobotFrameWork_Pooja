#C:\Users\00003983\development\Day1PythonPgm\ReadFromxml.xml

from xml.dom import minidom


class ReadXML:
    def readTestDataFromXML(self, nodeName):

        xmlobj = minidom.parse("C:/Users/00003983/development/Day1PythonPgm/ReadFromxml.xml")
        myDataValue = xmlobj.getElementsByTagName(nodeName)[0]
        return myDataValue.firstChild.data

obj = ReadXML()
print(obj.readTestDataFromXML("appurl"))