Feature: Book Inventory

    In order to be able to keep track of my books
    As a user
    I should be able to keep an inventory of my book

    Background:
        Given I am a registred user
        And I am logged in
    
    Scenario: Listing book in my inventory
        Given I have populated my inventory with several books
        When I visit the homepage
        Then I should see the list of my books

    