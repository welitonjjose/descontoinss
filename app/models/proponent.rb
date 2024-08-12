class Proponent < ApplicationRecord
  validates :name, :document, :born_in,
            :street, :district, :city, :state,
            :cep, :phone, :salary, :discount, presence: true
end
