*** Settings ***
Test Template    Login To Mahara
Resource    ../../Keywords/Mahara/Mahara_Keywords.txt

*** Test Cases ***
Mahara Student Login
    Login To Mahara    student    MaharaDemo    
    Wait Until Page Contains Element    https://demo.mahara.org/user/paula-paulsen    
    Page Should Contain Element    xpath=//a[@class="user-icon"]
    
Mahara Learner Login
    Login To Mahara    learner    MaharaDemo    
    Wait Until Page Contains Element    https://demo.mahara.org/user/polly-potter    
    Page Should Contain Element    xpath=//a[@class="user-icon"]

Mahara Staff Login
    Login To Mahara    staff    MaharaDemo    
    Wait Until Page Contains Element    https://demo.mahara.org/user/percy-pearle    
    Page Should Contain Element    xpath=//a[@class="user-icon"]
    
Mahara Sitestaff Login
    Login To Mahara    sitestaff    MaharaDemo    
    Wait Until Page Contains Element    https://demo.mahara.org/user/petra-petterson    
    Page Should Contain Element    xpath=//a[@class="user-icon"]
    
    
