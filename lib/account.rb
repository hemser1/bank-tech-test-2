class Account
  attr_reader :balance, :transactions, :date

  def initialize
    @balance = 0
    @transaction = Transaction.new
  end

  def deposit(amount)
    @balance += amount

  end

  def withdraw(amount)
    @balance -= amount
  end

end
