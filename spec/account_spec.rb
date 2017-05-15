require 'account'

describe Account do
  subject(:account) { described_class.new }

  describe '#initialize' do
    it 'has an initial balance of 100' do
      expect(account.balance).to eq 100
    end
  end

end
