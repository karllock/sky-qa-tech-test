Feature: cubeRoot


@cubeRoot
Scenario: Find the cube root of a number
  Given I enter "8" into the calculator
  And I hit "cubeRoot"
  When I hit "equals"
  Then I see a result of "2"

@cubeRoot
Scenario: Find the cube root of a number
  Given I enter "120" into the calculator
  And I hit "cubeRoot"
  When I hit "equals"
  Then I see a result of "5"

