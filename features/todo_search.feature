Feature: Todo Search
  As a user
  I want to search through my todos using keyboard shortcuts
  So that I can quickly find specific items

  Background:
    Given the todo app is running
    And the app is in idle mode
    And there are multiple todo items in the list

  Scenario: Enter search mode
    When I press "/"
    Then the app should enter search mode
    And I should see a search input field

  Scenario: Search for todos
    Given I am in search mode
    When I type "shopping"
    And I press "Enter"
    Then the todo list should only show items containing "shopping"
    And the first matching item should be highlighted

  Scenario: Search for todos with tags
    Given I am in search mode
    When I type "#family"
    And I press "Enter"
    Then the todo list should only show items with the tag "family"
    And the first matching item should be highlighted

  Scenario: Exit search mode
    Given I am in search mode
    And I have performed a search
    When I press "Escape"
    Then the app should return to idle mode
    And the full todo list should be visible again
    And the last highlighted item should remain highlighted

  Scenario: No search results
    Given I am in search mode
    When I type "nonexistent"
    And I press "Enter"
    Then I should see a "No matching todos found" message 