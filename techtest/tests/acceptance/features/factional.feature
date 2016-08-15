Feature: factorial



@factorial
Scenario: I want to find the factorial value of an entered value.
  Given I enter "8" into the calculator
  And I hit "factorial"
  When I hit "equals"
  Then I see a result of "40320"
