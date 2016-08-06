Feature: As a user, I want to manage shipment records for incoming isolates

Background:
  When I go to the app's home page
  And I enter hospital number "123456"
  And I press "Set"
  And I follow "Enter new shipment"
  Then I should be on the new shipment form page

Scenario: Set up a new Objective-A shipment record
  When I enter information about a new Objective-A shipment
  And I press "Save"
  Then I should be on the shipment show page
  And I should see a success flash message saying "New shipment record created"
  And I should see the Objective-A shipment information I entered previously

Scenario: Set up a new Objective-B/H. influenza shipment record
  When I enter information about a new Objective-B/H. influenza shipment
  And I press "Save"
  Then I should be on the shipment show page
  And I should see a success flash message saying "New shipment record created"
  And I should see the Objective-B/H. influenza shipment information I entered previously

Scenario: Set up a new Objective-B/M. catarrhalis  shipment record
  When I enter information about a new Objective-B/M. catarrhalis shipment
  And I press "Save"
  Then I should be on the shipment show page
  And I should see a success flash message saying "New shipment record created"
  And I should see the Objective-B/M. catarrhalis shipment information I entered previously
