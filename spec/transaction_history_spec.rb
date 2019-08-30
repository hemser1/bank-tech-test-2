require 'transaction_history'
describe Transaction_history do
subject(:transaction_history) { described_class.new }

  context 'Logs Transaction_history' do
    describe '#initialization' do
      it 'should return an empty array when initialized' do
        expect(transaction_history.statement).to eq []
      end
    end
    describe '#add_record' do
      it 'pushing a record to the statement array' do
        record = { test: "test_record" }
        transaction_history.add_record(record)
        expect(transaction_history.statement).to eq [{
          test: "test_record"
          }]
      end
    end
  end
end
