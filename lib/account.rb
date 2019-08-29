class Account
  attr_reader :balance, :transaction, :date

  def initialize
    @balance = 0
    @transaction = Transaction.new
  end

  def deposit(credit)
    @balance += credit
    @transaction.log(credit, nil, balance)
  end

  def withdraw(debit)
    @balance -= debit
    @transaction.log(nil, debit, balance)
  end

end
