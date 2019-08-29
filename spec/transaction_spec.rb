require 'transaction'

describe Transaction do
subject(:transaction) { described_class.new }

context 'should create a record of a transaction' do
  describe '#initialization' do
    it 'should create an empty hash to store transaction in' do
      expect(transaction.record).to eq ({})
    end
  end
end

end
