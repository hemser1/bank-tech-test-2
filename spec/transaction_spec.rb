require 'transaction'

describe Transaction do
subject(:transaction) { described_class.new }

context 'should create a record of a transaction' do
  describe '#initialization' do
    it 'should create an empty hash to store transaction in' do
      expect(transaction.record).to eq ({})
    end
  end
  describe '#deposit'
  it 'should take an input from account' do
    expect(transaction).to respond_to(:log).with(2).argument
  end
end

end
