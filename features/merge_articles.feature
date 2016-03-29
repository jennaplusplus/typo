Feature: Merge Articles
  Articles with similar content can be merged into one mega-article by administrators

  Scenario: An administrator can merge articles
    Given the blog is set up
    And I am logged into the admin panel
    And I am on the all articles page
    Then I should see "Hello World!"
    When I follow "Edit"
    Then I should see "merge_with"
    
