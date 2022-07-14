from selenium import webdriver
from selenium.webdriver.common.by import By


class Day3TestScripts:
    def getTableCount(self):
        global driver
        driver = webdriver.Chrome("/Users/00003983/bin/chromedriver.exe")
        driver.get("https://testautomationpractice.blogspot.com/")
        driver.maximize_window()

        # readHtml tabel

        # Get total row count
        print("total row count" + str(len(driver.find_elements(By.XPATH, "//table[@name='BookTable']/tbody/tr"))))
        # get total column count
        print("total column count" + str(
            len(driver.find_elements(By.XPATH, "//table[@name='BookTable']/tbody/tr[1]/th"))))

        # get author

        # def CheckIfCheckBoxIsSelected(self):

    def getLinksFromPage(self):
        driver.get("https://intellipaat.com/")
        elm = driver.find_element(By.XPATH, "//a")
        for el in elm:
            print(el)
        driver.quit()


obj = Day3TestScripts()
obj.getTableCount()
obj.getLinksFromPage()
