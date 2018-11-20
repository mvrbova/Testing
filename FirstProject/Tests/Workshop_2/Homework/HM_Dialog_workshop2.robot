*** Settings ***
Library    Dialogs

*** Variables ***
${Text_Value}    Text Value
${Expected_Value}    Expected Value 

*** Test Cases ***
Open Dialog And Compare Text Value
    Open Dialog   
    Compare Values
    
*** Keywords ***
Open Dialog
    Get Value From User    ${Text_Value}  
    
Compare Values 
    Should Be Equal As Strings    ${Text_Value}    ${Expected_Value}    
    
    
    

    
    
    