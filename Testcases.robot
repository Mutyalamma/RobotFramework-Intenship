*** Settings ***
Resource    ../Keywords/Keywords.robot
Resource    ../Variables/Variables.robot
Library    SeleniumLibrary

Suite Setup    Open Browser    ${url}    ${browser}
Suite Teardown    Close Browser

*** Test Cases ***
TC1:Navigate to the Amazon Website
    [Tags]    Regression
    [Setup]    Log To Console    ${tc1}
    Given Maximize Browser Window
    Then Scroll down into Todaysdeals
    [Teardown]    Log To Console    ${td1}
TC2:Verify the Price
    [Tags]    Sanity
    [Setup]    Log To Console    ${tc2}
    Given Verifying the price of RequiredItem
    [Teardown]    Log To Console    ${td2}
TC3:Iterating the product table
    [Tags]    Iteration
    [Setup]    Log To Console    ${tc3}
    Given Product Table Iteration
    [Teardown]    Log To Console    ${td3}