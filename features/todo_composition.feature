Feature: Todo Composition
  As a user
  I want to compose todo items with keyboard shortcuts
  So that I can quickly add new todos with tags

  Background:
    Given the todo app is running
    And the app is in idle mode

  Scenario: Entering composition mode
    When I press "C"
    Then the app should enter composition mode
    And I should see a new todo input field

  Scenario: Adding a todo with tags
    When I press "C"
    And I type "Buy groceries #shopping #errands"
    Then the input should show "Buy groceries #shopping #errands"
    And the tags "shopping" and "errands" should be highlighted

  Scenario: Saving todo with Command+Enter
    Given I am in composition mode
    And I have typed "Call mom #family"
    When I press "Cmd+Enter"
    Then the todo should be saved
    And the app should return to idle mode
    And the new todo should appear in the list

  Scenario: Canceling todo composition with Escape
    Given I am in composition mode
    And I have typed "Draft email"
    When I press "Escape"
    Then the composition should be canceled
    And the app should return to idle mode
    And no new todo should be added 