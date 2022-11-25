*** Settings ***

Resource          base.robot

Test Setup          New session
Test Teardown       Clouse session


*** Test Cases ***
Select by text and validate by value
    Go to                                   ${url}/dropdown
    Select From List By Label               class:avenger-list              Scott Lang
    ${selected}=                            Get Selected List Value         class:avenger-list 
    Should Be Equal                         ${selected}                      7


Select by value and validate by text
    Go to                                   ${url}/dropdown
    Select From List By Value               id:dropdown                      6
    ${selected}=                            Get Selected List Label         id:dropdown 
    Should Be Equal                         ${selected}                      Loki