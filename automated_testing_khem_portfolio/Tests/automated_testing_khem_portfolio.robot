*** Settings ***

Resource  ../Resources/common_keywords.robot
Resource  ../Resources/home_page.robot
Resource  ../Resources/logged_page.robot
Resource  ../Resources/experience_page.robot
Resource  ../Resources/project_page.robot
Resource  ../Resources/logout_page.robot

Suite Setup      Begin Web Test
Suite Teardown   End Web Test

Documentation  This is UI testing of the Portfolio-Web-Page of Khem Raj Neupane

*** Test Cases ***

Loads Homepage & Fails Login
    [Documentation]  This test suit opens browser, inputs wrong username & passwords
    ...     clicks the button and gets error pop up message. Then clears the text fields.
    [Tags]  smoke    home_page_wrong_sign_in
    home_page.Open HomePage
    home_page.Give WrongCredentials&ClearFields


Give Correct Credentials
    [Documentation]  This test suit inputs correct credentials
    ...     clicks the button and gets success pop up message
    [Tags]  smoke    home_page_correct_sign_in
    home_page.Give CorrectCredentials

Fill In Experience From
    [Documentation]  This test suit navigates inside the logged page to fill up the experience form
    [Tags]  smoke    loggedin_page_navigation_experience
    logged_page.Navgate LoggedPageToExperience
    experience_page.Fill ExperienceForm

Fill In Projects Form
    [Documentation]  This test suit navigates inside the logged page to fill up the projects form
    [Tags]  smoke    loggedin_page_navigation_projects
    logged_page.Navgate LoggedPageToProject
    project_page.Fill ProjectForm

Logout Session
    [Documentation]  This test suit navigates to login homepage by logging out the current user session
    logout_page.Navgate Logout