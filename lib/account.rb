class Account
  attr_reader :balance, :transactions, :date

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

end
