class Transaction_history
  attr_reader :date
  
  def initialize
    @date = Time.now.strftime("%d/%m/%Y")
  end
end
