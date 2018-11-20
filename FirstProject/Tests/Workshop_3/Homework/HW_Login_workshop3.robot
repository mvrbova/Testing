*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser To Mahara
Test Teardown    Capture Screenshot And Close Browser 

*** Test Cases ***
Mahara Invalid Login
    Login To Mahara    Invalid_Login    Invalid_Password
    Wait Until Page Contains Element    id=mesagges
    Page Should Contain    You have not provided the correct credentials to log in. Please check your username and passwrod are correct.
    Page Should Contain    There was an error with submitting this form. Please check the marked fields and try again.
             
Mahara Admin Login
    Login To Mahara    Admin    MaharaDemo
    Wait Until Page Contains Element    https://demo.mahara.org/user/james-jetts    
    Page Should Contain Element    xpath=//a[@class="user-icon"]
    
*** Keywords ***
Open Browser To Mahara    
    Open Browser   https://demo.mahara.org/    chrome
    
Login To Mahara
    [Arguments]    ${uname}    ${pwd}
    Input Text    id=login_login_username    ${uname} 
    Input Password    name=login_password    ${pwd}
    Click Button    Login

Capture Screenshot And Close Browser
    Capture Page Screenshot
    Close Browser