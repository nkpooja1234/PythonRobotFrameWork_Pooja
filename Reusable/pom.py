from xml.dom import minidom
from pathlib import Path


def PopularCoursesXpathLink(LinkName):
    return "//h4[text()='Popular Courses']/../p[3]/a[text()='"+LinkName+"']"

def readxml(NodeName):
    myxmlDoc = minidom.parse(str(Path(__file__).parent.parent)+"/Day7Xml.xml")
    data = myxmlDoc.getElementsByTagName(NodeName)[0]
    return data.firstChild.data

def FleekTopMenuBars(LinkName):
    return "//nav[@class='main_menu drop_down right']/ul/li/a/span[text()='"+LinkName+"']"


def ServicesSubMenuOptions(LinkName):
    return "(//span[text()='"+LinkName+"'])[1]"

def myImagPath(imageName):
    path = str(Path(__file__).parent.parent)+"/"+imageName
    #data = path.getElementsByTagName(NodeName)[0]
    return path


#C:\Users\00003983\development\Day1PythonPgm\test.img
# imageName



#C:\Users\00003983\development\Day1PythonPgm\TestDataDay6.xml