*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Workshop_4/Homework/Keywords/Keywords_e-shop.txt
Variables    ../../../Workshop_4/Homework/Objects/Objects.py
Test Setup    Open Eshop Webpage    ${url}
Test Teardown    Capture Screenshot And Close Browser

*** Test Cases ***
Summer Dress Sorting 
    Click Link    ${link_dresses}    
    Click Link    ${link_summer_dresses}
    Select From List By Label    ${sort_by}    Product Name: A to Z
        


