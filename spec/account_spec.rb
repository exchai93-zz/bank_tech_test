require 'account'

describe Account do
  subject(:account) { described_class.new }
  let(:statement) { Statement.new }

  context 'New account' do
    describe '#initialize' do
      it 'has a balance of 0' do
        expect(account.balance).to eq 0
      end
    end
  end

  context 'Making transactions' do
    describe '#deposit' do
      it 'adds to the account balance' do
        expect{ account.deposit(25) }.to change{ account.balance }.by 25
      end
    end

    describe '#withdraw' do
      it 'deducts from the account balance' do
        expect{ account.withdraw(50) }.to change{ account.balance }.by -50
      end

      it 'raises an error if funds are below zero' do
        account.deposit(5)
        expect{ account.withdraw(20) }.to raise_error 'Insufficient funds'
      end
    end
  end

  describe '#statement' do
    it 'displays statement in the correct format' do
      expect(account.statement). to eq "date || credit || debit || balance"
    end
  end
end
