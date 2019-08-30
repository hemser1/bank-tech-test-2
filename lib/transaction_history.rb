class Transaction_history
  attr_reader :date, :statement

  def initialize
    @date = Time.now.strftime("%d/%m/%Y")
    @statement = []
  end
end
