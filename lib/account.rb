#account.rb
require 'date'
class Account
  attr_accessor :balance, :account_status, :owner

  STANDARD_VALIDITY_YRS = 5

  def initialize(attrs = {})
    @balance = balance
    @pin_code = pin_creation
    @expiary_date = exp_date
    @account_status = :active
    set_owner(attrs[:owner])
  end

  def pin_creation
    rand(1000...9999)
  end

  def exp_date
    Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%y')
  end

  def self.deactivate(account)
    account.account_status = :deactivated
  end

end

private

def set_owner(obj)
  obj == nil ? missing_owner: @owner = obj
end

def missing_owner
  raise 'An account owner is required'
end
