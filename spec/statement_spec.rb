require 'statement'

describe Statement do
  subject(:statement) { described_class.new }
  let(:transaction) { Transaction.new(20, 10, 200) }

  describe '#initalize' do
    it 'is empty' do
      expect(statement.transactions).to eq []
    end
  end

  describe 'new transaction' do
    it 'should be included in the statement' do
      statement.transactions << transaction
      expect(statement.transactions).to eq [transaction]
    end
  end

end
