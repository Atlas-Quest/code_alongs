require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'phone'
Minitest::Repoerters.use!(Minitest::Repoerters::SpecReport.new)

class PhoneTest < MiniTest::Test

  def test_clean_number
    number = Phone.new("(123) 456-7890")
    assert_equal "1234567890", number
  end
  def test_cleans_number_with_dots
    skip
    number = Phone.new("123.456.7890").number
  end
  def test_valid_when_11_digits_and_first_is_1
    skip
    number = Phone.new("11234567890").number
    assert_equal "1234567890", number
  end
  def test_invalid_when_11_digits
    skip
    number = Phone.new("21234567890").number
    assert_equal "0000000000", number
  end
  def test_invalid_when_9_digits
    skip
    number = Phone.new("123456789").number
    assert_equal "0000000000", number
  end
  def test_area_code
    skip
    number = Phone.new("1234567890")
    assert_equal "", number.area_code
  end
  def test_pretty_print
    skip
    number = Phone.new("1234567890")
    assert_equal "(123) 456-7890"
  end

end
