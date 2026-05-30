*** Settings ***

Library           SeleniumLibrary
Resource          variaveis.robot  
Resource          keyword.robot

Suite Setup    Log To Console    Suite Iniciada

Test Setup     Acesso a app
Test Teardown  Capture Page Screenshot

Suite Teardown  Log to Console  Suite Terminada

*** Test Cases ***
Teste 01
    Click Element   //button[@data-test="add-to-cart-sauce-labs-backpack"]
    Click Link      //a[@data-test="shopping-cart-link"]

    Wait Until Element Is Visible    //span[text()="Your Cart"]    10s
    Element Should Be Visible        //div[text()="Sauce Labs Backpack"]
   
Teste 02
    # [Documentation]    Adicionar produto ao carrinho, removê-lo e verificar se o carrinho está vazio
    # Open Browser    ${URL}    ${BROWSER}
    # Maximize Browser Window

    Click Element   //button[@data-test="add-to-cart-sauce-labs-backpack"]
    Click Link      //a[@data-test="shopping-cart-link"]

    Wait Until Element Is Visible    //span[text()="Your Cart"]    10s
    Click Element   //button[@data-test="remove-sauce-labs-backpack"]
    Element Should Not Be Visible    //*[@id="item_4_title_link"]

    # Close Browser

    # No operation
    # Adicionar um produto no carrrinho
    # Entrar na pagina do carrinho
    # Validar se o produto esta no carrinho
    # Remover esse produto
    # Validar se o carrinho esta vazio


# # AULA SOBRE ROBOT FRAMEWORK (Asserts / Variáveis)- 25/05/2026
# *** Variables ***    

# ${curso}   Squad Academy
# @{profissionais}   Renan   Renato   Alexandre
# &{Aulas}  Aula01=Robot    Aula02=Playwrite    Aula03=Cypress
# &{Locator}     login=//input[@data-test="username"]     senha=//input[@data-test="password"]

# *** Test Cases ***

# valida acesso com standard_user
#     [Tags]  user
#     Open Browser    https://www.saucedemo.com/    Chrome
#     Input Text      ${Locator.login}  standard_user  #//input[@data-test="username"]  
#     Input Text      ${Locator.senha}  secret_sauce  #//input[@data-test="password"]  
#     Click Button    //input[@data-test="login-button"]
#     Element Text Should Be   //span[@data-test="title"]   Products
#     Element Should Be Visible   //a[@data-test="shopping-cart-link"] 

#     ##${Produto}   Get text       //span[@data-test="title"] 
#     ##log to console   ${Produto}
#     #Wait Until Page Contains  Renan  5s  Palavra não encontrada           
#     #Title Should Be  Swag Labs 
#     Close Browser

# AULA SOBRE ROBOT FRAMEWORK (Keywords / Bibliotecas)- 20/05/2026
# *** Test Cases ***
# Valida Acesso com standard_user

#     Open Browser	https://www.saucedemo.com/	Chrome
#     Input Text	    //input[@data-test="username"]	    standard_user
#     Input Text      //input[@data-test="password"]	    secret_sauce
#     Sleep           5s
#     Click Button	//input[@id="login-button"]
#     Close All Browsers
    
# Valida Acesso com locked_out_user

#     Open Browser	https://www.saucedemo.com/	Chrome
#     Input Text	    //input[@data-test="username"]	    locked_out_user
#     Input Text      //input[@data-test="password"]	    secret_sauce
#     Sleep           5s
#     Click Button	//input[@id="login-button"]
#     Close All Browsers

# Valida Acesso com problem_user

#     Open Browser	https://www.saucedemo.com/	Chrome
#     Input Text	    //input[@data-test="username"]	    problem_user
#     Input Text      //input[@data-test="password"]	    secret_sauce
#     Sleep           5s
#     Click Button	//input[@id="login-button"]
#     Close All Browsers

# Valida Acesso com performance_glitch_user

#     Open Browser	https://www.saucedemo.com/	Chrome
#     Input Text	    //input[@data-test="username"]	    performance_glitch_user
#     Input Text      //input[@data-test="password"]	    secret_sauce
#     Sleep           5s
#     Click Button	//input[@id="login-button"]
#     Close All Browsers

# Valida Acesso com error_user

#     Open Browser	https://www.saucedemo.com/	Chrome
#     Input Text	    //input[@data-test="username"]	    error_user
#     Input Text      //input[@data-test="password"]	    secret_sauce
#     Sleep           5s
#     Click Button	//input[@id="login-button"]
#     Close All Browsers

# Valida Acesso com visual_user

#     Open Browser	https://www.saucedemo.com/	Chrome
#     Input Text	    //input[@data-test="username"]	    visual_user
#     Input Text      //input[@data-test="password"]	    secret_sauce
#     Sleep           5s
#     Click Button	//input[@id="login-button"]
#     Close All Browsers
# *** Keywords ***

