# Test-driving a simple Ruby program

## Objectives
By the end of this workshop, you should be able to:
 * Explain the TDD process and how it differs from "write-code-then-tests" approach.
 * Apply a TDD process on a simple Ruby class, using RSpec.

## Exercise 1 - approach to testing

You'll need to clone this repo first.

We wrote a small Ruby class to check if phone numbers are valid ones, in `exercise_1/lib/phone_checker.rb`. We'd now like to test this class to make sure it works.

```ruby
class PhoneChecker
  def check(phone)
    return false if phone.length < 8
    return false if phone.length > 10
    
    true
  end
end
```

1. What does the method `check` do? How does the `phone` argument value impact the return value of the method?
2. Let's think about how we would test this method in IRB. What Ruby code would we write? Write a table with two columns — one for the method call, the other one for the return value we expect.

```ruby
checker = PhoneChecker.new
checker.check('0278382323') == true
checker.check('222') == false
# etc
```

3. Run `bundle install` inside the directory `exercise_1`
4. In the file `exercise_1/spec/phone_checker_spec.rb`, write tests for each of those cases using the [RSpec syntax](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/introduction-to-rspec#:~:text=Let%E2%80%99s%20add%20our%20first%20test.). You *should not* modify the `PhoneChecker` class code.
5. Run `rspec` and make sure the tests pass. We've now written automated tests for our class.

## Edge cases

What happens if we call our `check` method with a `nil` value? Or something that is not a number?

```ruby
checker = PhoneChecker.new
checker.check('not a number')
```

We forgot to handle those cases when writing the first version of the `PhoneChecker` class.

## Exercise 2 - testing first

Let's try a different approach. This time, we do not have any written code yet, but only specifications in plain English:

We need a class `PhoneChecker` to check phone numbers. This class has only one method `check` that takes a phone number, it should return *false* if *at least one of these* conditions is true:
  * the phone number is `nil`
  * the phone number is not an instance of the `String` class
  * the phone number contains something else than digits
  * the phone number is shorter than 8 characters, or longer than 10.

*Otherwise* it returns true.

We now need to think about *what the code would look like* if we were to call this class.

1. Write how we would call this class methods if the code were written (it won't work, since it's not written!)
2. Run `bundle install` and then `rspec --init` in the `exercise_2` directory to generate the `spec` directory and setup RSpec.
3. Use the answers from 1. and what you've learned so far on the RSpec syntax to write a first RSpec test case in a file `exercise_2/spec/phone_checker_spec.rb`. You should write only on `it` block.
4. Now write the minimal code for the class `PhoneChecker` in `exercise_2/lib/phone_checker.rb` that will make this first test pass. And *no more* than this code.
5. Repeat steps 3 and 4 for the rest of the `check` method until it is complete (it matches all the requirements and there is one RSpec test case per requirement).

Hint: you can use the following method to test if a string contains *only digits*:
```ruby
def only_digits?(phone_number)
  phone_number.scan(/\D/).empty?
end
```

## Conclusion

Compare the two approaches:
 * What are the advantages of writing tests first (TDD)?
 * How is it more challenging than writing first the code and then the tests?

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=test_driven_development/tdd_simple/README.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=test_driven_development/tdd_simple/README.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=test_driven_development/tdd_simple/README.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=test_driven_development/tdd_simple/README.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=test_driven_development/tdd_simple/README.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
