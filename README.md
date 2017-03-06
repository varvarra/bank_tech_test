# Bank tech test

This project is my solution for a Bank tech test. It should be demonstrative of my OO design and TDD skills.


## User Stories

```
As a bank client
I want to make a deposit of 1000 on 10-01-2012 and a deposit of 2000 on 13-01-2012
```

```
As a bank client
I want to make a withdrawal of 500 on 14-01-2012
```

```
As a bank client
To see the history of my transactions
I want a printed statement showing the credit, debit and balance for three days.
```

### Acceptance Criteria

Producing a bank statement for a bank client, like below:

date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
