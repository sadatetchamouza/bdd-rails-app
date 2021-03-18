Feature: Authentication

    In order to use the website
    As a User 
    I should be able to sign up, log in and log out

    Scenario: Signing up
        Given I visit the Homepage
        When I fill in the signup form
        And I confirm the email
        Then should see that my account is confirmed

    Scenario: User logs in
        Given I am a registered user
        And I visit the Homepage
        When I fill in the log in form
        Then I should be logged in

    Scenario: User logs out
        Given I am a registered user
        And I am logged in
        And I visited the Homepage
        When I click on the log out button
        Then I should be redirected to the log in page
