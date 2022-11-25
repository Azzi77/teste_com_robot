*** Settings ***

Resource          base.robot

Test Setup          New session
Test Teardown       Clouse session

***Test Cases***

Selecting by id

    Go to                                   ${url}/radios
    Select Radio Button                    movies           cap 
    Radio Button Should Be Set To           movies          cap 
Selecting by value
    Go to                                   ${url}/radios
    Select Radio Button                     movies           guardians
    Radio Button Should Be Set To           movies           guardians


