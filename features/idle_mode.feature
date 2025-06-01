Feature: Todo App Idle Mode
  As a user
  I want the app to start in idle mode
  So that I can use keyboard shortcuts to interact with my todos

  Background:
    Given the todo app is running

  Scenario: App starts in idle mode
    Then the app should be in idle mode
    And the keyboard shortcuts should be active

  Scenario: First item is highlighted in new session
    Given there are existing todo items
    When I start a new session
    Then the first todo item should be highlighted

  Scenario: Last highlighted item persists
    Given there are existing todo items
    And I have previously highlighted the second todo item
    When I return to idle mode
    Then the second todo item should remain highlighted 