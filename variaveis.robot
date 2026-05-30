*** Variables ***
${URL}    https://www.saucedemo.com
${BROWSER}    chrome

${curso}           Squad Academy

@{profissionais}   Renan      
             ...   Renato
             ...   Alexandre 
             
&{Aulas}           Aula01=Robot
            ...    Aula02=Playwrite
            ...    Aula03=Cypress

&{Locator}         login=//input[@data-test="username"]   
            ...    senha=//input[@data-test="password"]