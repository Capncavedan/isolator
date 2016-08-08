Feature: As a user, I want to be able to run reports

Background:
  Given some data worth reporting on
  When I go to the app's home page

Scenario: Set up a new Objective-A shipment record
  When I follow "Hospital stats report"
  Then I should be on the hospital stats report page
  And I should see the hospital stats report
