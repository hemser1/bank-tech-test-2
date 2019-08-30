require 'transaction_history'
describe Transaction_history do
subject(:transaction_history) { described_class.new }

  context 'Logs Transaction_history' do
    describe '#initialization' do
      it 'should return an empty array when initialized' do
        expect(transaction_history.statement).to eq []
      end
    end
  end
end
