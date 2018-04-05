#account_spec.rb

require './lib/account.rb'

describe Account do

  it 'check length of pin number' do
    number = 1234
    number_length = Math.log10(number).to_i + 1
    expect(number_length)
  end

end
