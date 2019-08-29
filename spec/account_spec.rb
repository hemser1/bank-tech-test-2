require 'account'

describe Account do
  subject(:account) { described_class.new }

  context 'users can have an account' do
    describe '#initialization' do
      it 'users should start with a balance of 0' do
        expect(account.balance).to eq 0
      end
      it 'should return today\'s date when initialized' do
        date = Time.now.strftime("%d/%m/%Y")
        expect(account.date).to eq "#{date}"
      end
    end
    describe '#deposit' do
      it 'users can make deposits into their accounts' do
        account.deposit(2000)
        expect(account.balance).to eq 2000
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
