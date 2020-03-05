*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***

Fill ProjectForm
    [Documentation]  Clicks every input fields and fills up the project form and sends it to the database
    Input Text      id=project-name         portfolio
    Input Text      id=technology-name      java springboot
    Input Text      id=project-url          https://www.khemrajneupane.fi
    Input Text      id=project-type         semi-full-stack
    Input Text      id=project-rate         5
    Click Button    id=project-btn
    Wait Until Element Contains     xpath=//*[@id="root"]/div/div/div[3]     a new blog https://www.khemrajneupane.fi by java springboot added

#robot -d results tests/automated_testing_khem_portfolio.robot
