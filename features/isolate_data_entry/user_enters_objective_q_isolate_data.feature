Feature: As a user, I need to enter objective Q isolate data from lab measurements

Background:
  When I go to the app's home page
  And I enter hospital number "123456"
  And I press "Set"
  And I follow "Enter new shipment"
  And I enter information about a new Objective-Q shipment
  And I press "Save"
  Then I should be on the shipment show page

Scenario: Enter Objective-Q isolate data
  When I follow "Start data entry"
  Then I should be on the isolate data entry form
  When I fill out 5 rows of Objective-Q isolate data
  And I press "Save"
  Then I should be on the shipments index page
  And I should see a success flash message saying "Shipment updated - 5 isolate entries saved"
