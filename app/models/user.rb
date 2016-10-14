class User < ActiveType::Object

  attribute :first_name
  attribute :last_name
  attribute :annual_salary
  attribute :super_rate

  # methods
  def full_name
    [first_name.capitalize, last_name.capitalize].join(' ')
  end

  def gross_income
    @gross_income ||= (annual_salary.to_f / 12).round
  end

  def net_income
    @net_income ||= gross_income - income_tax
  end

  def income_tax
    @income_tax ||= Tax.new(annual_salary.to_i).tax
  end

  def super
    @super ||= ((gross_income * super_rate.to_f) / 100).round
  end

end
