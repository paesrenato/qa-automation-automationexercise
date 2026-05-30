*** Settings ***
Resource  variaveis.robot  
Library   SeleniumLibrary

*** Keywords ***
Acesso a app
    Open Browser  https://www.saucedemo.com/     Chrome     options=add_argument("--guest")
    Input Text    ${Locator.login}   standard_user   #//input[@data-test="username"]  
    Input Text    ${Locator.senha}   secret_sauce   #//input[@data-test="password"]  
    Click Button   //input[@data-test="login-button"]

    Element Text Should Be   //span[@data-test="title"]   Products


Valida Variaveis 01
    [Tags]  A
    Log To Console    ${curso}   
    Log To Console    ${profissionais}[0]  
    Log To Console    ${Aulas.Aula01}     

Valida Variaveis 02
    [Tags]  A
    Log To Console    ${curso}   
    Log To Console    ${profissionais}[1]  
    Log To Console    ${Aulas.Aula02}   

Valida Variaveis 03
    [Tags]  B
    Log To Console    ${curso}   
    Log To Console    ${profissionais}[2]  
    Log To Console    ${Aulas.Aula03} 
    Should Be Equal    ${profissionais}[2]    ${profissionais}[0]