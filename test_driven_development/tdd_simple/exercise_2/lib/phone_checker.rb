class PhoneChecker
  def only_digits?(phone_number)
    phone_number.scan(/\D/).empty?
  end

  def check(phone_number)
    return false unless phone_number.instance_of? String
    return false if phone_number.nil?
    return false unless only_digits?(phone_number)
    return false if phone_number.length < 8
    return false if phone_number.length > 10
    return true 
  end
end

