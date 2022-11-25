*** Settings ***

Library             SeleniumLibrary

***Variables***

${url}                       https://training-wheels-protocol.herokuapp.com/ 


***Keywords***
New session
     Open Browser                         ${url}                       chrome
Clouse session 
      Capture Page Screenshot
      Close Browser 