*** Settings ***
Library    Browser  
Library    SeleniumLibrary
Library    RequestsLibrary
Library    JSONLibrary
Test Setup    New Browser    chromium    No


*** Variables ***
${BASE_URL}    https://jsonplaceholder.typicode.com

*** Test Cases ***
Get User
    [Documentation]    Przykładowe wywołanie GET
    Create Session    jsonplaceholder    ${BASE_URL}
    ${response}=    Get Request    jsonplaceholder    /users/1
    Should Be Equal As Strings    ${response.status_code}    200
    Log to console    ${response.json()}

    ${value_A}    JSONLibrary.Get Value From Json    ${response.json()}    name
    ${value_A}    Set Variable   ${value_A}[0]
    Log to console    ${value_A}
    
    Should Be Equal As Strings    ${value_A}    Leanne Graham