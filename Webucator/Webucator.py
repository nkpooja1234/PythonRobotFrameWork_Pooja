from selenium import webdriver
from selenium.webdriver.common.by import By
from PageObjectModel import HomaPage
from Reusable import Reusable

class Day3TestScripts:

    def launchWebucatorApplication(self):
        global driver
        driver = webdriver.Chrome(Reusable.readxml("url"))
        driver.get(Reusable.readxml("pageTitle"))
        driver.maximize_window()

    def launchWebucatorHomePage(self):
        print("launchWebucatorHomePage")
        logo = driver.find_element(By.XPATH, HomaPage.logo_xpath())
        logo.click()
        if driver.current_url == "https://www.webucator.com/":
            print("Navigating to page is successful")


    def launchWebucatorLoginPage(self):
        print("launchWebucatorLoginPage")


    def webCatorQuit(self):
        driver.close()


testWeb = Day3TestScripts()
testWeb.launchWebucatorApplication()
testWeb.launchWebucatorHomePage()
testWeb.launchWebucatorLoginPage()
testWeb.webCatorQuit()
