Feature: navigations for the monitor page

  As a support engineer
  So that I can get a general overview of my IT operations
  I want to navigate from the monitor page to the others IT elements pages

Scenario: navigate from monitor to the incidents list
  Given I am on the monitor page
  When I follow the 'Incidents' link
  Then I should be on the incidents page
