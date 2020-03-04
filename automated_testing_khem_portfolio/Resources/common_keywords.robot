*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${HOME_PAGE}   https://khem-portfolio.herokuapp.com/  #http://localhost:3000/
${BROWSER}      chrome  #headlesschrome
*** Keywords ***
Begin Web Test
    open browser    ${HOME_PAGE}    ${BROWSER}


End Web Test
    [Documentation]  creates a log file here, and finally closes the browser
    log location
    sleep  3s
    close browser

