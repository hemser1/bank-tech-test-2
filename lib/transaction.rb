class Transaction
  attr_reader :record, :date, :transaction_history

  def initialize
    @record = {}
    @date = Time.now.strftime("%d/%m/%Y")
    @transaction_history = Transaction_history.new
  end

  def log(credit = nil, debit = nil, balance)
    @record = {
    date: date,
    credit: credit,
    debit: debit,
    balance: balance
  }

  end

end
