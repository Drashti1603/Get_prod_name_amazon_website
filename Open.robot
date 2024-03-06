*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
first test case
        Log     registration form
        #Set Selenium Implicit Wait      10 seconds
        Open Browser    https://www.way2automation.com/way2auto_jquery/index.php    Firefox     
        #Wait Until Element Is Visible    //*[@id="load_form"]/fieldset[1]/input
            Input Text    name:name   Devarshi pandya
        Input Text    name:phone    9408518516
        ${random}       Evaluate    random.randint(0,10)
        ${email}        Catenate        ${random}de sas @gmail.com
        ${email2}       Evaluate    '${email}'.replace(' ','_')


        Input Text    name:email    ${email2}
        Select From List By Label    name:country       India
        Input Text    name=city     Delhi
        Input Text    xpath:(//input[@name='username'])[2]    devarshi.pandya
        Input Text    xpath:(//input[@name='password'])[2]    Devarshi.pandya
        Click Element       //*[@type="submit"]


