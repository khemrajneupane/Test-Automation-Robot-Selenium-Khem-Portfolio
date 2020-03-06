This project is a clear and clean code example of
Test Automation using Robot Framework and Selenium2Library
for my own portfolio project which is deployed in heroku
and running in this link-  [khem-portfolio](http://khem-portfolio.herokuapp.com/).

#   Technologies used:
    * Robot Framework 3.1.2
    * Python 2.7.17
    * Selenium2library 3.0.0
    * ChromeDriver 80.0.3987.106
    * Pycharm 2019.3

# Test is strictly followed with the Manual testing guidelines as below:

## Loads Homepage

- Actions:
    * User Opens Home Page of http://khem-portfolio.herokuapp.com/
    * Maximizes browser window
- Expected Results:
    * Home page contains 'Please login to the application'


## Fails Login
- Actions:
    * User inputs wrong username 'biansha1'
    * User inputes wrong password 'biansha1'
    * User clears input fields.
- Expected Results:
    * Wrong username & passwords causes pop up to appear with the error text 'Username- biansha1 & Password- biansha1' are wrong credentials!'


## Passes Login
- Actions:
    * User inputes correct username 'biansha'
    * User inputes correct password 'biansha'
- Expected Results:
    * Correct username & passwords causes pop up to appear with succcess text 'Welcome biansha!'


## Fill In Experience From
- Actions:
    * User clicks 'Add' button => clicks 'Experiences'
    * User inputes job title as 'robot enter job title'
    * User inputes company name as ' robot enter company name'
    * User inutes start-date
    * User inuptes end-date
    * User inputes job responsibilities as 'robot enter job responsibilities
    * User inputes job rating as '5'
    * User clicks 'Add Experience' button
- Expected Results:
    * User can see the experience form
    * User can see all the input fields filled up
    * User see a pop up windows with the success message 'a new work experience ROBOT ENTER JOB TITLE is just created'


## Fill In Experience From
- Actions:
    * User clicks 'Add' button => clicks 'Projects'
    * User inputes project name as 'portfolio'
    * User inputes technology name as ' java springboot'
    * User inutes project url as 'https://www.khemrajneupane.fi'
    * User inuptes project type as 'semi-full-stack'
    * User inputes job rating as '5'
    * User clicks 'Add To Portfolio' button
- Expected Results:
    * User can see the portfolio form
    * User can see all the input fields filled up
    * User see a pop up windows with the success message 'A new project in JAVA SPRINGBOOT technology is just added'

## Logout Session
- Actions:
    * User clicks 'Logout' button
- Expected Results:
    * User finds being logged out of the session & the page navigates to 'login' home page.