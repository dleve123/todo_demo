Feature: Completing a todo
  In order to help keep track of the stuff I have completed
  As a person
  I want to be able to complete a todo

  Scenario: Completeing a Todo
   Given I have the todo "Get milk"
   And I am on the todo index page
   When I complete the todo "Get milk"
   Then the list should be empty
