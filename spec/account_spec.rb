#account_spec.rb

require './lib/account.rb'

describe Account do
let (:person) {instance_double('person', name: 'George')}
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

  it 'deactivates account using class method' do
    Account.deactivate(subject)
    expect(subject.account_status).to eq deactivated
  end

  it 'is expected to have an owner' do
    expect(subject_owner).to eq person
  end

  it 'is expected to raise error if no owner is set' do
    expect { described_class.new }.to raise_error 'An account owner is required'
  end

end
