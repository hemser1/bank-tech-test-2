class Transaction_history
  attr_reader :date, :statement

  def initialize
    @statement = []
  end

  def add_record(record)
    @statement.push(record)
  end

end
