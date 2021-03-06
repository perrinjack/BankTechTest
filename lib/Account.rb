# frozen_string_literal: true

require_relative '../lib/statement.rb'
require_relative '../lib/transaction.rb'
class Account
  attr_reader :transactions, :balance
  def initialize(money_event = Transaction, statement = Statement)
    @statement = statement
    @money_event = money_event
    @transactions = []
    @balance = 0
  end

  def credit(amount)
    @balance += amount
    @transactions.push(@money_event.new(amount, 'credit', @balance))
  end

  def withdraw(amount)
    @balance -= amount
    @transactions.push(@money_event.new(amount, 'debit', @balance))
  end

  def print_statement()
    print @statement.new(@transactions).print_statement
  end
end
