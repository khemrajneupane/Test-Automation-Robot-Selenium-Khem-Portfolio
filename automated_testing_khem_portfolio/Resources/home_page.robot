*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Open HomePage
    [Documentation]  Checks browser open until it finds the text "Please login to the application"
    ...         & maximizes the browser

    maximize browser window
    Wait Until Page Contains  Please login to the application

Give WrongCredentials&ClearFields
    [Documentation]  Provide wrong credentials in the input field and see error pop up message. Then clears the input fields.
    Input Text  id=filled-adornment-username    biansha1
    Input Text  id=filled-adornment-password    biansha1
    Click Button  id=login
    Wait Until Element Contains  xpath=//*[@id="root"]/div/div/div[3]  Username- biansha1 & Password- biansha1' are wrong credentials!
    press key   id=filled-adornment-username   \\08
    press key   id=filled-adornment-username   \\08
    press key   id=filled-adornment-username   \\08
    press key   id=filled-adornment-username   \\08
    press key   id=filled-adornment-username   \\08
    press key   id=filled-adornment-username   \\08
    press key   id=filled-adornment-username   \\08
    press key   id=filled-adornment-username   \\08
    press key   id=filled-adornment-password   \\08
    press key   id=filled-adornment-password   \\08
    press key   id=filled-adornment-password   \\08
    press key   id=filled-adornment-password   \\08
    press key   id=filled-adornment-password   \\08
    press key   id=filled-adornment-password   \\08
    press key   id=filled-adornment-password   \\08
    press key   id=filled-adornment-password   \\08
    Sleep  3s

Give CorrectCredentials
    [Documentation]  Provide credentials in the input field and see success pop up message
    Input Text  id=filled-adornment-username    biansha
    Input Text  id=filled-adornment-password    biansha
    Click Button  id=login
    Wait Until Element Contains  xpath=//*[@id="root"]/div/div/div[3]  Welcome biansha!

#robot -d results tests/automated_testing_khem_portfolio.robot
