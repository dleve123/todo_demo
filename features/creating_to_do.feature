Feature: Creating a ToDo
  In order to keep track of my life
  As a person
  I want to create a todo

  Scenario: Successfully creating a todo
    Given I am on the todo index page
    When I click on the link "create"
    Then I should be on a new todo form
    When I create a todo with the content "Get my life together"
    Then I should be on the todo list page
    And the todo "Get my life together" should be listed on the page

  Scenario: Failing to create a to do
    Given I am on the todo index page
    When I click on the link "create"
    Then I should be on a new todo form
    When I create a todo with the content ""
    Then I should be on a new todo form
    And error messages should be displayed
