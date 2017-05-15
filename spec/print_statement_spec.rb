require 'print_statement'

describe Print_statement do
  subject(:print) { described_class.new }
  let(:transaction) { Transaction.new(20, 50, 100) }
  let(:statement) { Statement.new }

  context 'Print format' do
    describe 'Format' do
      it 'shows statement in the format "date || credit || debit || balance"' do

      end
    end
  end



end
