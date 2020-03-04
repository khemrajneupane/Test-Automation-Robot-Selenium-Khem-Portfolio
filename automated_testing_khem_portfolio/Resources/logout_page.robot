*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***

Navgate Logout
    [Documentation]  Click logout button then navigate to login page
    Click Element  id=logout
    Wait Until Page Contains  Please login to the application



#robot -d results tests/automated_testing_khem_portfolio.robot
