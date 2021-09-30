require 'phone_checker'

describe PhoneChecker do
  checker = PhoneChecker.new

  it "should return false if nil given" do
    expect(checker.check(nil)).to eq(false)
  end

  it "should return false if not a number" do
    expect(checker.check([])).to eq false
    expect(checker.check("sadga")).to eq(false)
    expect(checker.check("999sdgs99")).to eq(false)
    expect(checker.check("999sdgs99")).to eq(false)
  end

  it "should return false if shorter than 8" do
    expect(checker.check("1234567")).to eq(false)
    expect(checker.check("1")).to eq(false)
    expect(checker.check("1234af")).to eq(false)
  end

  it "should return false if longer than 10" do
    expect(checker.check("123456712314134")).to eq(false)
    expect(checker.check("123456712314413414134134")).to eq(false)
    expect(checker.check("1234567123112121414134")).to eq(false)
  end

  it "should return true if between 8 and 10" do
    expect(checker.check("12345678")).to eq(true)
    expect(checker.check("123456789")).to eq(true)
    expect(checker.check("1234567891")).to eq(true)
  end

end