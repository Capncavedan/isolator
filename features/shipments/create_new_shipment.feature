Feature: As a user, I want to manage shipment records for incoming isolates

Scenario: Set up a new shipment record
  When I go to the app's home page
  And I enter hospital number "123456"
  And I press "Set"
  And I follow "Enter new shipment"
  Then I should be on the new shipment form page
  When I enter information about a new shipment
  And I press "Save"
  Then I should be on the shipment show page
  And I should see the shipment information I entered previously
