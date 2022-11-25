
*** Settings ***
Library      app.py
*** Test Cases ***
Deve retornar mensagem de boas vindas

     ${result}=          Welcome           Fernando
    Should Be Equal      ${result}         Olá Fernando, bem vindo ao Curso básico de Robot Framework!