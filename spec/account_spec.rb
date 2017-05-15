require 'account'

describe Account do
  subject(:account) { described_class.new }

  describe '#initialize' do
    it 'has an initial balance of 0' do
      expect(account.balance).to eq 0
    end
  end

  describe '#deposit' do
    it 'adds to the account balance' do
      expect{ account.deposit(25) }.to change{ account.balance }.by 25
    end
  end

  describe '#withdraw' do
    it 'deducts from the account balance' do
      expect{ account.withdraw(50) }.to change{ account.balance }.by -50
    end
  end
end
