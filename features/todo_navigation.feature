Feature: Todo Navigation
  As a user
  I want to navigate through my todos using keyboard shortcuts
  So that I can quickly view and edit different items

  Background:
    Given the todo app is running
    And the app is in idle mode
    And there are multiple todo items in the list

  Scenario: Navigate down through todos
    When I press "J"
    Then the highlight should move to the next todo item
    And the highlighted todo's content should be displayed

  Scenario: Navigate up through todos
    Given the second todo item is highlighted
    When I press "K"
    Then the highlight should move to the previous todo item
    And the highlighted todo's content should be displayed

  Scenario: Wrap around when reaching bottom
    Given the last todo item is highlighted
    When I press "J"
    Then the highlight should move to the first todo item

  Scenario: Wrap around when reaching top
    Given the first todo item is highlighted
    When I press "K"
    Then the highlight should move to the last todo item

  Scenario: Edit highlighted todo
    Given a todo item is highlighted
    When I press "Enter"
    Then the app should enter edit mode for that todo
    And I should be able to modify the todo's content 