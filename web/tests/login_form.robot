** Settings ***

Resource          base.robot

Test Setup          New session
Test Teardown       Clouse session

***Test Cases***

Login successfully
  Go to                        ${url}/login
  Login With                   stark   jarvis!
   
  Should See Logged User                   Tony Stark

Invalid password
   [tags]                     login_error
   Go to                      ${url}/login
   Login With                 stark        abc123 
   
    
   Should Contain Login Alert            Senha é invalida!

User does not exist
     [tags]                   login_user404
  Go to                       ${url}/login
  Login With                  papito      123456

  
  Should Contain Login Alert                 O usuário informado não está cadastrado!

*** Keywords ***
Login With 
   [Arguments]         ${uname}       ${pass}  

   Input Text                            css:input[name=username]             ${uname} 
   Input Text                            css:input[name=password]             ${pass}
   Click Element                         class:btn-login
   
Should Contain Login Alert
 [Arguments]      ${expect_message}

   ${message}=          Get WebElement            id:flash
  Should Contain        ${message.text}          ${expect_message} 

Should See Logged User
  [Arguments]     ${full_name}

  Page Should Contain    Olá, ${full_name}. Você acessou a área logada!

