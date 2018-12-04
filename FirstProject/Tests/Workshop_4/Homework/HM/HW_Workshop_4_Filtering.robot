*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Workshop_4/Homework/Keywords/Keywords_e-shop.txt
Variables    ../../../Workshop_4/Homework/Objects/Objects.py
Test Setup    Open Eshop Webpage    ${url}
Test Teardown    Capture Screenshot And Close Browser

*** Test Cases ***
Filtering Top, Size, Color, Compositions
    Select Checkbox    ${categories}
    Select Checkbox    ${size}
    Select Checkbox    ${color}
    Select Checkbox    ${compositions}
    

*** inactive ***    
variables / aby se neopakovaly v kazdem filu zvlast / jen settings /kde budou vsechny variables, 
nemam assertions / neni to test , nic to netestuje, otestuje jen to, ze na te strance jsou ty checkbox.
objects /
   
       
data driven test