from selenium import webdriver
from selenium.webdriver.common.by import By


class Day2TestScripts:

    def launchmychromebrowser(self):
        driver = webdriver.Chrome("/Users/00003983/bin/chromedriver.exe")
        driver.get("https://www.google.com")
        driver.maximize_window()

        # button = driver.find_element(By.XPATH , "// MyTestPath")
        google_logo = driver.find_element(By.CLASS_NAME, "lnXdpd")
        google_logo.is_displayed()
        print("Google Page logo is displayed")

        # button.click()

        driver.quit()
        print("Google")


obj = Day2TestScripts()
obj.launchmychromebrowser()
