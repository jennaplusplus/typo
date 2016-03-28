Feature: Create Categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog posts

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    Given I am on the admin content page
    When I follow "Categories"
    Then I should see "Categories"
