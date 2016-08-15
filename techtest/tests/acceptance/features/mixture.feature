Feature: Mixture



@mix
Scenario: When i use a combination of add, divide, mulitple and subtract
  Given I enter "5" into the calculator
  And I hit "add"
  And I enter "10" into the calculator
  And I hit "multiply"
  And I enter "2" into the calculator
  And I hit "divide"
  And I enter "2" into the calculator
  And I hit "subtract"
  When I hit "equals"
  Then I see a result of "15"
