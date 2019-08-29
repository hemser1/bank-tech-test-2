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
      it 'should pass details to transactions' do
        account.deposit(2000)
        expect(account.transaction.record).to eq ({
          credit: 2000,
          debit: nil,
          balance: 2000
          })
      end
    end
    describe '#withdraw' do
      it 'users can make withdrawals from their accounts' do
        account.deposit(2000)
        account.withdraw(1000)
        expect(account.balance).to eq 1000
      end
    end
  end


end
