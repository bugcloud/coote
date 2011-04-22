Feature: user access to coote

  As a user
  I want to see coote site
  So that I can request some goods and see request status

  Scenario: access to top page at first time
    Given There are 3 request data
    When I go to the homepage
    Then I should see "coote"
    And I should see 3 requests
