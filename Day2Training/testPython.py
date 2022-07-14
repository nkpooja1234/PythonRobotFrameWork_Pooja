from selenium import webdriver
from selenium.webdriver.common.by import By


class TestClass:
    def checkMethod(self):
        driver = webdriver.Chrome("/Users/00003983/bin/chromedriver.exe")
        driver.get("https://www.google.com")
        driver.maximize_window()
        driver.quit()


obj = TestClass()
obj.checkMethod()
