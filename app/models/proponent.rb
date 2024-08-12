class Proponent < ApplicationRecord
  validates :name, :document, :born_in,
            :street, :district, :city, :state,
            :cep, :phone, :salary, :discount, presence: true


  def salary_range
    case salary
    when 0..1000
      '0 - 1.000'
    when 1001..2000
      '1.001 - 2.000'
    when 2001..3000
      '2.001 - 3.000'
    else
      'Acima de 3.000'
    end
  end
end
