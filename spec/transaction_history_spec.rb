require 'transaction_history'
describe Transaction_history do
subject(:transaction_history) { described_class.new }

  context 'Logs Transaction_history' do
    describe '#initialization' do
      it 'should return today\'s date when initialized' do
        date = Time.now.strftime("%d/%m/%Y")
        expect(transaction_history.date).to eq "#{date}"
      end
      it 'should return an empty array when initialized' do
        expect(transaction_history.statement).to eq []
      end
    end
  end
end
