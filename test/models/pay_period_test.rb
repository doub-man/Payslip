require 'test_helper'

class PayPeriodTest < MiniTest::Unit::TestCase
  def setup
    @pay_period = PayPeriod.new(start_date: '01 March')
  end

  def test_pay_period_parse
    assert_equal @pay_period.parse, "01 March - 31 March"
  end

  def test_pay_period_with_random_day
    @pay_period = PayPeriod.new(start_date: '15 March')
    assert_equal @pay_period.parse, "15 March - 14 April"
  end
end
