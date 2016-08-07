Feature: As a user, I want to update shipment records for incoming isolates

Background:
  Given an existing shipment
  When I go to the app's home page
  And I follow "All shipments"
  And I follow the edit link for the existing shipment

Scenario: Set up a new Objective-A shipment record
  When I update information about the Objective-A shipment
  And I press "Save"
  Then I should be on the shipments index page
  And I should see a success flash message saying "Shipment updated"
  And I should see the updated Objective-A shipment information
