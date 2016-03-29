Feature: Merge Articles
  Articles with similar content can be merged into one mega-article by administrators

  Scenario: An administrator can merge articles
    Given the blog is set up
      And there is a non-admin user
      And there is a post not written by the admin
      And I am logged into the admin panel
      And I am on the all articles page
    Then I should see "Rando article"
    When I follow "Rando article"
    Then I should see "Merge Articles"

  Scenario: A regular user cannot merge articles
    Given the blog is set up
      And there is a non-admin user
      And there is a post not written by the admin
      And I am logged in as a regular user
      And I am on the all articles page
    Then I should see "Rando article"
    When I follow "Rando article"
    Then I should not see "Merge Articles"

  Scenario: When articles are merged, the merged article should contain the text of both previous articles
    Given the blog is set up
      And there are two mergeable posts
      And I am logged into the admin panel
      And I am on the all articles page
    When I follow "Article 1"
      And I fill in "article_id" with the ID of the article with the name "Article 2"
      And I press "Merge"
    Then I should see "some text"
    Then I should see "more text"
