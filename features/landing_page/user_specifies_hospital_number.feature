Feature: As a user, I want specify the hospital number for which I am entering data

Scenario: I visit the landing page, and specify my hospital number
  When I go to the app's home page
  Then I should see "Enter hospital number"
  When I enter hospital number "123456"
  And I press "Set"
  Then I should see a success message saying "Hospital number 123456 selected"
  And I should see "(currently 123456)"
