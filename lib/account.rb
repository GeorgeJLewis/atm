#account.rb

class Account
  attr_accessor :balance

  def intitialize(balance)
    @balance = balance
    @pin_code = pin_creation
  end

  def pin_creation
    rand(1000...9999)
  end
end
