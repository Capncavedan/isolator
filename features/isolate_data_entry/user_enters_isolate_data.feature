Feature: As a user, I need to enter isolate data from lab measurements

Background:
  When I go to the app's home page
  And I enter hospital number "123456"
  And I press "Set"
  And I follow "Enter new shipment"
  And I enter information about a new Objective-A shipment
  And I press "Save"
  Then I should be on the shipment show page

Scenario: Enter Objective-A isolate data
  When I follow "Start data entry"
  Then I should be on the isolate data entry form
  When I fill out the Objective-A isolate data
  And I press "Save"
  Then I should be on the shipments index page
  And I should see a success flash message saying "25 isolate entries saved"
