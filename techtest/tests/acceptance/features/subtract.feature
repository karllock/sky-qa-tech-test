Feature: Substraction

    As a user of a calculator when I use the minus function between numbers the following number is reduced from the preceding number

@subtract
Scenario: Subtract the second number from the first
    Given I enter "50" into the calculator
    And I hit "subtract"
    And I enter "10" into the calculator
    When I hit "equals"
    Then I see a result of "40"

@subtract
Scenario: Subtract the third number from the second number and the second number from the first
    Given I enter "100" into the calculator
    And I hit "subtract"
    And I enter "17" into the calculator
    And I hit "subtract"
    And I enter "25" into the calculator
    When I hit "equals"
    Then I see a result of "58"

@subtract
Scenario: Subtract the second number from the first and then multiply by the third
    Given I enter "2500" into the calculator
    And I hit "subtract"
    And I enter "1560" into the calculator
    And I hit "add"
    And I enter "4" into the calculator
    When I hit "equals"
    Then I see a result of "944"
