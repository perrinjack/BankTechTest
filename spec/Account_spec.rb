# frozen_string_literal: true

require_relative '../lib/account.rb'

describe Account do
  let(:transaction) { double(:Transaction) }
  let(:statement) { double(:Statement) }
  let(:account) { Account.new(transaction, statement ) }
  it 'Account.new creates instance of an account' do
    expect(account).to be_instance_of Account
  end

  it 'starts with an empty list of transactions' do
    expect(account.transactions).to eq []
  end

  it 'starts with a balance of 0' do
    expect(account.balance).to eq 0
  end

  it 'increases total balance with' do
    allow(transaction).to receive(:new).with(100, "credit", 100)
    expect { account.credit(100) }.to change { account.balance }.by 100
  end

  it 'decreases total balance with' do
    allow(transaction).to receive(:new).with(100, "debit", -100)
    expect { account.withdraw(100) }.to change { account.balance }.by -100
  end
end
