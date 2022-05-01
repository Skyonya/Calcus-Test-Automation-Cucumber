Feature: Calcus Test

	Scenario: Check monthly payment
		Given open calcus
		Then check the elements
		Then input cost 12000000
		Then select initial payment type in %
		Then input initial payment 20
		Then check calculated initial payment 2400000
		Then check loan amount 9600000
		Then input loan period 20
		Then generate random number from 5 to 12 and input as interest rate
		Then click first payment type radiobutton
		Then check payment type radiobuttons
		Then click button calculate
		Then check monthly payment