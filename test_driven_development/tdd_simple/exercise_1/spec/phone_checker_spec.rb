require 'phone_checker'

describe PhoneChecker do
  it 'should be invalid if less than 8 digits' do
    checker = PhoneChecker.new
    expect(checker.check('123')).to eq(false)
    # expect(__).to(eq(__))
  end
end