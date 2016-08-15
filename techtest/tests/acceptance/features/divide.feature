Feature: Divide

    As a user of a calculator when I use the divide function between numbers the numbers should be divide by each other

@divide
Scenario: Divide two numbers together
    Given I enter "30" into the calculator
    And I hit "divide"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "15"

@divide
Scenario: Divide three numbers from each other
    Given I enter "36" into the calculator
    And I hit "divide"
    And I enter "6" into the calculator
    And I hit "divide"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "3"

@divide
Scenario: Divide two numbers and multiply another
    Given I enter "40" into the calculator
    And I hit "divide"
    And I enter "10" into the calculator
    And I hit "multiply"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "8"
