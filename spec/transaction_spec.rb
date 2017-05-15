require 'transaction'
require 'timecop'

describe Transaction do

  context 'Making a new transaction' do
    describe '#initialize' do
      it 'deposit' do
        Timecop.freeze do
          transaction = Transaction.new(20, nil, 200)
          expect(transaction.credit).to eq 20
          expect(transaction.debit).to eq nil
          expect(transaction.balance).to eq 200
          expect(transaction.date).to eq Time.now
        end
      end

      it 'withdrawal' do
        Timecop.freeze do
          transaction = Transaction.new(nil, 50, 500)
          expect(transaction.credit).to eq nil
          expect(transaction.debit).to eq 50
          expect(transaction.balance).to eq 200
          expect(transaction.date).to eq Time.now
        end
      end

    end
  end

end
