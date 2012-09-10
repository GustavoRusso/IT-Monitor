Feature: monitorization of incidents

  As a support engineer
  So that I can measure my future workload
  I want to have an overview of my incidents

Scenario: the monitor page show the total number of currently open incidents
  Given  I have 12 active incidents in my system
  And I am on the monitor page
  Then I should see the active incidents count set to 12
