class Tax
  def initialize(annual_salary)
    # 基数 百分率 基点
    base, percent, basic =TaxTable.get_rule(annual_salary)
    @tax = ((base + (annual_salary - basic) * percent / 100.0) / 12).round()
  end

  def tax
    @tax
  end
end
