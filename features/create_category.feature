Feature: Create Categories
  As an author
  In order to categorize my articles
  I want to be able to create new categories
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel
  
  Scenario: Successfully create new categories
    Given I am on the new categories page
    Then I should see "Categories"
    When I fill in "category_name" with "Tech"
    And I fill in "category_keywords" with "Tutorial"
    And I fill in "category_permalink" with "general"
    And I press "Save"
    Then I should see "Tech"
    And I should see "Tutorial"
    And I should see "general"