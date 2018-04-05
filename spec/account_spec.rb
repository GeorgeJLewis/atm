#account_spec.rb

require './lib/account.rb'

describe Account do

  it 'check length of pin number' do
    number = 1234
    number_length = Math.log10(number).to_i + 1
    expect(number_length)
  end

  it 'is expected to have expiary date on intitialize' do
    expected_date = Date.today.next_year(5).strftime('%m/%y')
    expect(subject.exp_date).to eq expected_date
  end

  it 'is expected to have :active status on intitialize' do
    expect(subject.account_status).to eq :active
  end

end
