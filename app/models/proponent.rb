class Proponent < ApplicationRecord
  validates :name, :document, :born_in,
            :street, :district, :city, :state,
            :cep, :phone, :salary, :discount, presence: true


  def salary_range
    case salary
    when 0..1045
      'Até R$ 1.045,00'
    when 1045.01..2089.60
      'De R$ 1.045,01 a R$ 2.089,60'
    when 2089.61..3134.40
      'De R$ 2.089,61 até R$ 3.134,40'
    when 3134.40..6101.06
      'De R$ 3.134,41 até R$ 6.101,06'
    else
      'Acima de R$ 6.101,07'
    end
  end
end
