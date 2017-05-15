require 'statement'

describe Statement do
  subject(:statement) { described_class.new }
  let(:transaction) { Transaction.new(20, 10, 200) }

  describe '#initalize' do
    it 'has an empty transaction history' do
      expect(statement.transaction_history).to eq []
    end
  end

  describe 'new transaction' do
    it 'should be included in the statement' do
      statement.transaction_history << transaction
      expect(statement.transaction_history).to eq [transaction]
    end
  end

end
