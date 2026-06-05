*** Settings ***
Library    SeleniumLibrary
Resource   variaveis.robot  
Resource   keyword.robot

# Suite Setup    Log To Console    Suite Iniciada

Test Setup     Acesso a app
# Test Teardown  Capture Page Screenshot

# Suite Teardown  Log to Console  Suite Terminada

*** Variables ***
@{componentes} =    Petronio   Renan   Renato    Alexandre
@{num}  10 

*** Test Cases ***
 Loops
  [tags]  01

    FOR  ${petronio}  IN RANGE  1  10
        Log to console  ${petronio}
    END


    FOR  ${petronio}  IN  @{componentes}
        Log to console  ${petronio}
    END
     
    IF  ${num} == 0
       Log to console  Petronio
    ELSE
        Log to console  Alexandre
    END

  ${aux}=  Set Variable  10
  ${TEMP}=  Set Variable  0
  WHILE  ${aux} != 1
     log to console    ${aux}
     ${aux}=  evaluate  ${aux} / 5 
  END

Teste Loops
    # Adiciono 3 produtos
    Click Element    //button[@id="add-to-cart-sauce-labs-backpack"]
    Click Element    //button[@id="add-to-cart-sauce-labs-bike-light"]
    Click Element    //button[@id="add-to-cart-sauce-labs-bolt-t-shirt"]

   # Entro na pagina do carrinho
   Click Link     //a[@data-test="shopping-cart-link"]
   
   # Valida se existe algum botao Remove na pagina
   ${Existe_botao}   Run Keyword And Return Status    Element Should Be Visible   //button[text()="Remove"]

  WHILE  ${Existe_botao}  
    Click Button    //div[@data-test="inventory-item"][1]//button
    ${Existe_botao}   Run Keyword And Return Status    Element Should Be Visible   //button[text()="Remove"]
  END 

  Element Should Not Be Visible    //span[@class="shopping_cart_badge"]


# # AULA SOBRE ROBOT FRAMEWORK (Test e Suite - Setup e Teardown)- 27/05/2026
# *** Test Cases ***
# Teste 01
#     Click Element   //button[@data-test="add-to-cart-sauce-labs-backpack"]
#     Click Link      //a[@data-test="shopping-cart-link"]

#     Wait Until Element Is Visible    //span[text()="Your Cart"]    10s
#     Element Should Be Visible        //div[text()="Sauce Labs Backpack"]
   
# Teste 02
#     [Documentation]    Adicionar produto ao carrinho, removê-lo e verificar se o carrinho está vazio
    
#     Click Element   //button[@data-test="add-to-cart-sauce-labs-backpack"]
#     Click Link      //a[@data-test="shopping-cart-link"]

#     Wait Until Element Is Visible    //span[text()="Your Cart"]    10s
#     Click Element   //button[@data-test="remove-sauce-labs-backpack"]
#     Element Should Not Be Visible    //*[@id="item_4_title_link"]

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

