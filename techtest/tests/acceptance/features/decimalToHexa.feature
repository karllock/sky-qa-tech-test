Feature: decimalToHexadecimal



@decimalToHexadecimal
Scenario: I want to find the Hexadecimal value of a decimal
  Given I enter "356.74" into the calculator
  And I hit "decimalToHexadecimal"
  When I hit "equals"
  Then I see a result of "164"

@decimalToHexadecimal
Scenario: I want to find the Hexadecimal value of a decimal which returns a alpha numeric result
  Given I enter "123456789" into the calculator
  And I hit "decimalToHexadecimal"
  When I hit "equals"
  Then I see a result of "75bcd15"