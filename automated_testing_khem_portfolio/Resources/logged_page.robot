*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***

Navgate LoggedPageToExperience
    [Documentation]  Click Add button then navigated to Add Experience Form & Add Projects Forms
    Click Element  xpath=//*[@id="responsive-navbar-nav"]/div[1]/div/a
    Click Element  id=add-experience

Navgate LoggedPageToProject
    [Documentation]  Click Add button then navigated to Add Experience Form & Add Projects Forms
    Click Element  xpath=//*[@id="responsive-navbar-nav"]/div[1]/div/a
    Click Element  id=add-project

#robot -d results tests/automated_testing_khem_portfolio.robot
