from xml.dom import minidom
from pathlib import Path

def readxml(NodeName):
    myxmlDoc = minidom.parse("C:/Users/00003983/development/Day1PythonPgm/Webucator/testData.xml")
    data = myxmlDoc.getElementsByTagName(NodeName)[0]
    return data.firstChild.data


#str(Path(__file__).parent.parent)+"/testData.xml"
#C:/Users/00003983/development/Day1PythonPgm/Webucator/testData.xml
