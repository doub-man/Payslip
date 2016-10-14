require 'test_helper'

class TaxTableTest < MiniTest::Unit::TestCase
  def test_get_rule_function_return_right_value
    assert_equal [0.0, 0.0, 0], TaxTable.get_rule(10000)
    assert_equal [0.0, 0.0, 0], TaxTable.get_rule(18200)
    assert_equal [0.0, 19, 18201], TaxTable.get_rule(18201)
    assert_equal [0.0, 19, 18201], TaxTable.get_rule(37000)
    assert_equal [3572, 32.5, 37001], TaxTable.get_rule(37001)
    assert_equal [3572, 32.5, 37001], TaxTable.get_rule(80000)
    assert_equal [17547, 37, 80001], TaxTable.get_rule(80001)
    assert_equal [17547, 37, 80001], TaxTable.get_rule(180000)
    assert_equal [54547, 45, 180001], TaxTable.get_rule(180001)
  end
end
