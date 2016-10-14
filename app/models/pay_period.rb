class PayPeriod < ActiveType::Object
  attribute :start_date

  # methods
  def parse
    [parse_date(start_date.to_date), parse_date(end_date)].join(' - ')
  end

  private
  def end_date
    start_date.to_date.next_month.yesterday
  end

  def parse_date(date)
    date.strftime('%d %B')
  end
end
