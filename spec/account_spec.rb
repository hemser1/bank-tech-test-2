require 'account'

describe Account do
  subject(:account) { described_class.new }

  context 'users can have an account' do
    describe '#initialization' do
      it 'users should start with a balance of 0' do
        expect(account.balance).to eq 0
      end
    end
    describe '#deposit' do
      it 'users can make deposits into their accounts' do
        account.deposit(2000)
        expect(account.balance).to eq 2000
      end
    end
  end


end
