*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***

Fill ExperienceForm
    [Documentation]  Clicks every input fields and fills up the experiece form and sends it to the database
    Input Text      id=Jjob-title        robot enter job title
    Input Text      id=company-name     robot enter company name
    Press Keys      id=start-date       \\57365
    Press Keys      id=end-date         \\57365
    Input Text      id=job-responsibilities    robot enter job responsibilities
    Input Text      id=job-rating      5
    Click Button    id=add-expn
    Wait Until Element Contains     xpath=//*[@id="root"]/div/div/div[3]     a new work experience robot enter job title created!

#robot -d results tests/automated_testing_khem_portfolio.robot
