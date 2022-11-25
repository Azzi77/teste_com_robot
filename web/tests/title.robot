*** Settings ***

Resource          base.robot

Test Setup          New session
Test Teardown       Clouse session


*** Test Cases ***

Should See Page Title

     Title Should Be     Training Wheels Protocol 

