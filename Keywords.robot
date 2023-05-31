*** Settings ***
Library    SeleniumLibrary
Resource    ../Variables/Variables.robot

*** Keywords ***
Scroll down into Todaysdeals
    Wait Until Element Is Visible    ${Todaysdeals}    5s
    Scroll Element Into View    ${Todaysdeals}
    Wait Until Element Is Visible    ${Requireddeal}    
    Click Element    ${Requireddeal}
Verifying the price of RequiredItem
    Wait Until Element Is Visible    ${price1}    10s
    ${price3}    Get Text    ${price1}
    Log To Console    ${price3}
    Wait Until Element Is Visible    ${RequiredItem}
    Click Element    ${RequiredItem}
    Wait Until Element Is Visible    ${price2}    10s
    ${price4}    Get Text    ${price2}
    Log To Console    ${price4}
    Should Be Equal    ${price3}    ${price4}
    Wait Until Element Is Visible    ${Seemoreproductdetails}
    Scroll Element Into View    ${Seemoreproductdetails}
    Click Element    ${Seemoreproductdetails}
Product table Iteration
    ${rowCount} =    Get Element Count   ${Tablerow}
    # ${columnCount} =    Get Element Count   ${Tablecolumn} 
    Log To Console    ${rowcount}
    # Log To Console    ${columnCount}
    FOR    ${rowIndex}    IN RANGE    1    ${rowCount} + 1      
         ${rowHeader}=    Get Text    xpath://table[@id='productDetails_techSpec_section_1']/tbody/tr[${rowIndex}]/th
        IF    "${rowHeader}" == "${Expectedata}"
            ${value}=    Get Text    xpath://table[@id='productDetails_techSpec_section_1']/tbody/tr[${rowIndex}]/td
            Log To Console    ${rowHeader}
            Log To Console    ${value}   
        END
        Run Keyword If    '${rowHeader}' == '${Expectedata}'    Exit For Loop   
    END
    
