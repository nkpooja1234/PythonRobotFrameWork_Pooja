*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary



*** Variables ***


*** Test Cases ***
User must sign in to check out
    Open Browser  https://www.google.com/  chrome
    Close Browser


*** Keywords ***