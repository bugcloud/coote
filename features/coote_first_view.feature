Feature: user access to coote

  As a user
  I want to see coote site
  So that I can request some goods and see request status

  Scenario: access to top page at first time
    Given there are 3 request data
    When I go to the homepage
    Then I should see "coote"
    And I should see 3 requests

  Scenario: show new mono request form
    Given I am on the homepage
    When I go to the new mono page
    Then I should see new mono form

  Scenario: make new mono request
    Given I am on the new mono page
    And there is no data
    When I fill in "mono_from" with "me"
    And I fill in "mono_to" with "him"
    And I fill in "mono_body" with "juice"
    And I press "mono_submit"
    Then I should be on the homepage
    And I should see 1 requests
