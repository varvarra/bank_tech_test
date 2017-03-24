# Bank tech test

This project is my solution for a Bank tech test. It should be demonstrative of my OO design and TDD skills.

## Installation and Usage

To install the program, complete the following:

 - Clone this repo `git clone https://github.com/varvarra/bank_tech_test.git ``
 - Run ``cd bank-tech-test``
 - Run ``bundle install``

To run the tests:

 - Run ``rspec``

To use the program:

 - ``Run pry``


## User Stories

```
As a bank client
To be able to use my bank account
I want to able to make a deposit
```

```
As a bank client
To make payments
I want to able to make a withdrawal  
```

```
As a bank client
To see the history of my transactions
I want a printed statement showing the credit, debit and balance for each day.
```

```
As a bank client
To see the history of my transactions
I want to see a bank statement with all transactions in reverse chronological order
```

### Acceptance Criteria

Producing a bank statement for a bank client, like below:

|date       | credit | debit   | balance|
| --------- |:------:| :------:| ------:|
|14/01/2012 |        | 500.00  | 2500.00|
|13/01/2012 | 2000.00|         | 3000.00|
|10/01/2012 | 1000.00|         | 1000.00|

## Domain Model

Client |        Account            |   Transaction    |StatementPrinter
-----------------------------------------------------------------------------
    ----deposit--->  |   -----create credit tr. ---->

    ----withdrawal->  |   -----create debit tr.---->
                  ------------------------------------------print---->
                                                        list of transactions
