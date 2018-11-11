*** Settings ***
Library    SeleniumLibrary
Resource    ../../Workshop_4/Homework/Keywords/Keywords_e-shop.txt
Variables    ../../Workshop_4/Homework/Objects/Objects.py
Test Setup    Open Eshop Webpage    ${url}
Test Teardown    Capture Screenshot And Close Browser

*** Variables ***
${url}	http://automationpractice.com/index.php?id_category=3&controller=category
${browser}	chrome

*** Test Cases ***
Filtering Top, Size, Color, Compositions
    Select Checkbox    ${categories}
    Select Checkbox    ${size}
    Select Checkbox    ${color}
    Select Checkbox    ${compositions}