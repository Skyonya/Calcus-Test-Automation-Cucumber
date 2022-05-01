# Calcus-Test-Automation-Cucumber
Test Automation for https://calcus.ru/kalkulyator-ipoteki

## Installing requirements
This project uses ```Ruby 2.7.6-1 with devkit```, ```Selenium webdriver``` and ```Cucumber```

You will need to install:

Selenium webdriver: 
```
gem install selenium-webdriver
```

Selenium webdriver development dependencies: 
```
gem install ffi
```

Cucumber: 
```
gem install cucumber
```

## Running Autotest
You can run autotest using:

```
cucumber
```

## Test steps

1. go to "https://calcus.ru/kalkulyator-ipoteki"
2. check the elements
3. input 12000000 in 'Стоимость недвижимости'
4. select % in 'Первоначальный взнос'
5. input 20 in 'Первоначальный взнос'
6. check text «2 400 000 руб.» in «Первоначальный взнос»
7. check text «9 600 000 руб.» in «Сумма кредита»
8. input 20 in 'Срок кредита'
9. input @random_number in 'Процентная ставка'
10. check and select radiobutton «Аннуитетные» and unselect radiobutton «Дифференцированные»
11. click button «Рассчитать»
12. check «Ежемесячный платеж»

## Cucumber feature steps
```
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
```
