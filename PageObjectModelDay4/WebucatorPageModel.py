def featureCourses_header(headername):
    return "//h1[text()='"+headername+"']"

def featureCourse_Text(subtext):
    return "//div[contains(text(),'"+subtext+"')]"

def featureCourse1_Title1(position):
    return "//div[@class='col-lg-9']/div/div["+position+"]/div/div[1]//h5/a"

def featureCourse1_Duration1(position):
    return "//div[@class='col-lg-9']/div/div["+position+"]/div/div[1]/div/div[1]"

def featureCourse1_Class1(position):
    return "//div[@class='col-lg-9']/div/div["+position+"]/div/div[1]/div/div[2]/span"





