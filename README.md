# Bank Tech Test for Makers Academy

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## Approach

Found the task relatively simple in most parts. Two areas where I experienced a little difficulty were: 

* Mocking the Time.now used to access the current time.

* Cleaning up the large block of code used to mock the statement print ( Lines 23-31 of the statement_Spec.rb isn't very DRY).

* Did spend a little too long figuring out using the newline character, as it can only be used within double quotes.

* After receiving feedback I realised that dependency injection was needed to ensure th transaction class wasn't too closely coupled to the account class. This was introduced in th latest commits and allowed for mocking of the transaction class.

* Test Coverage of 98.97% achieved.

### Testing

* Run tests using `rspec`
* Use `rubocop` to lint code
* Test coverage shown with `simplecov`. 



### Installation

* Clone this repo to your local machine.
* Install dependencies:
```
$ bundle install
```
Then run:
```
$ irb -r './lib/account.rb'
```
This will open the program in irb from which you will be able to interact with it.

![Results](Results.png)
