class TaxTable < ActiveType::Object
  class << self
    def salary_table
      @salary_table = {
        (0..18200) => [0.0, 0.0],
        (18201..37000) => [0.0, 19],
        (37001..80000) => [3572, 32.5],
        (80001..180000) => [17547, 37],
        (180001..Float::INFINITY) => [54547, 45]
      }
    end

    def get_rule(annual_salary)
      salary_table.each_pair do |key, value|
        if (key.include? annual_salary)
          return value.push(key.first)
        end
      end
    end
  end
end
