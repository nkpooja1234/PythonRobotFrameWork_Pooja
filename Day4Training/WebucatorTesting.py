from selenium import webdriver
from selenium.webdriver.common.by import By
from time import sleep
from Day4Reusable import ReusableFileDay4
from PageObjectModelDay4 import WebucatorPageModel

class WebucatorTestingDay4:
    def launchWebucatorApp(self):
        global driver
        driver = webdriver.Chrome(ReusableFileDay4.readxml("chromePath"))
        driver.get(ReusableFileDay4.readxml("url"))
        driver.maximize_window()

    def CloseApp(self):
        driver.quit()

    def FeaturedCourses(self):

        # validate feature file header
        header = driver.find_element(By.XPATH, ReusableFileDay4.readxml())
        print(header)



obj = WebucatorTestingDay4()
obj.launchWebucatorApp()
obj.CloseApp()






