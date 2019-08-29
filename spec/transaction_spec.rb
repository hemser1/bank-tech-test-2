require 'transaction'

describe Transaction do
subject(:transaction) { described_class.new }

context 'should create a record of a transaction' do
  describe '#initialization' do
    it 'should create an empty hash to store transaction in' do
      expect(transaction.record).to eq ({})
    end
  end
  describe '#log'
  it 'should take an input from account' do
    expect(transaction).to respond_to(:log).with(3).argument
  end
  it 'should create a record from inputs' do
    credit = 1000
    debit = nil
    balance = 1000
    expect(transaction.log(credit, debit, balance)).to eq ({
      credit: 1000,
      debit: nil,
      balance: 1000
    })
  end
end

end
