# yalla assignment

## Focus Points

This assignment is designed to test the following:

- Ability to learn something new
- Ability to read/understand documentation
- Ability to see something through from start to finish
- Front end skills
- Back end skills
- Source Code Management
- Common sense
- Quality of work
- Code style
- Understanding of code separation of concerns
- URL structure

## Requirements

- Git
- Java 1.8
- Grails 4.0.0
- Get the project running, you can get help from the grails website
- (Recommendation) Install IntelliJ Community Edition

## Task Overview

We need a new page, with an input for the user to type in the name of a github account.
Once submitted, the app should display:

- The avatar image of the account
- The location
- The bio
- The github ID
- The number of public repos owned by that account

## Expected Behaviour

- The frontend should send the requested account name to the backend
- The backend should check a local cache/database if we already have results for this account
- If not, the backend will call the github api <https://api.github.com/users/user_name> (e.g. <https://api.github.com/users/facebook>), and store the results in a local cache/database.
- The backend will return the results from the database to the frontend
- The frontend will display the results accordingly

## Instructions

- Read up quickly on the basics of  the grails framework and groovy language
- Fork this repository
- Create the new feature on your fork
- Raise a pull request once done
- IMPORTANT - For the PR, use the naming convention `yourfirstname-yourlastname`
