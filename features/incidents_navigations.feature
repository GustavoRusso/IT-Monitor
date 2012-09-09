Feature: navigations from incidents page

  As a support engineer
  So that I can review different aspects of my IT status
  I want to navigate to different elements from the incidents pages

Scenario: navigate from incidents to monitor
  Given I am on the incidents page
  When I follow the 'Back to monitor' link
  Then I should be redirected to the monitor page
