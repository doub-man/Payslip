class UploadsController < ApplicationController
  def create
    user = User.new(user_params)
    pay_period = PayPeriod.new(pay_period_params)
    @ans = {
      full_name: user.full_name,
      pay_period: pay_period.parse,
      gross_income: user.gross_income,
      income_tax: user.income_tax,
      net_income: user.net_income,
      super: user.super
    }
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :annual_salary, :super_rate)
  end

  def pay_period_params
    params.permit(:start_date)
  end
end
