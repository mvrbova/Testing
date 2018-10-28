*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.google.cz/
${Text Value}    Text Value
${Expected Value}    Expected Value 

*** Test Cases ***
To Compare Text Value
    Open Dialog
    Input Text Value
    Compare Returned Value With Expected Value

*** Keywords ***
Open Dialog
    Open Dialog    ${URL}
    
Input Text Value
    Input Text Value    ${Text Value}
    
Compare Returned Value With Expected Value
    Should Be Equal As Strings    ${Expected Value} 
    
