Feature: Edit Categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to edit categories of my blog posts

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully edit categories
    Given I am on the admin content page
    When I follow "Categories"
    Then I should see "Categories"
    When I follow "Edit"
    And I fill in "category_name" with "Something else"
    And I fill in "category_description" with "Lorem Ipsum again"
    And I press "Save"
    Then I should see "Category was successfully saved."
