*** Settings ***

Resource            base.robot

Test Setup          New session
Test Teardown       Clouse session


***Variables***


${check_thor}                id:thor
${check_iron}                css:input[value='iron-man']
${check_panther}             xpath://*[@id='checkboxes']/input[7]


*** Test Cases ***
Marking potion with id
     Go to                                 ${url}/checkboxes 
     Select Checkbox                       ${check_thor} 
     Checkbox Should Be Selected           ${check_thor} 

Marking potion with CSS Selector                                  
     Go to                                ${url}/checkboxes 
     Select Checkbox                      ${check_iron}
     Checkbox Should Be Selected          ${check_iron}
     
Marking potion with XPath
           [tags]      ironman
     Go to                                ${url}/checkboxes 
     Select Checkbox                      ${check_panther}
     Checkbox Should Be Selected          ${check_panther}
  

