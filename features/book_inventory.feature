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

    Scenario: Adding a new book to the inventory
        When I submit the new book to my inventory
        Then I should see the new book in my inventory

    Scenario: Update a book in the inventory
        Given I have a book in my inventory
        When I change the book title
        Then I should have the book with the new title
    
    Scenario: Remove a book from my inventory
        Given I have a book in my inventory
        When I remove a book from my inventory
        Then I should not see it listing in my inventory