#account.rb
require 'date'
class Account
  attr_accessor :balance, :account_status,
  STANDARD_VALIDITY_YRS = 5

  def intitialize(attrs = {})
    @balance = balance
    @pin_code = pin_creation
    @expiary_date = exp_date
    @account_status = :active
  end

  def pin_creation
    rand(1000...9999)
  end

  def exp_date
    Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%y')
  end

end
