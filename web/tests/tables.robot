** Settings ***

Resource          base.robot

Test Setup          New session
Test Teardown       Clouse session

***Test Cases***

Checks the value when informing the line number

    Go to                                        ${url}/tables 
    Table Row Should Contain                     id:actors      2   @vindiesel

Finds the line by the key text and validates the other values
  Go to                                        ${url}/tables
  ${target}=                                   Get WebElement       xpath:.//tr[contains(., '@chadwickboseman')]
  Log                                          {target.text}
  Log To Console                               {target.text}
  Should Contain                               {target.text}        700.000
  Should Contain                               {target.text}        Pantera Negra