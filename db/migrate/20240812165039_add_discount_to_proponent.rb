class AddDiscountToProponent < ActiveRecord::Migration[7.1]
  def change
    add_column :proponents, :discount, :decimal, scale: 2, precision: 10
  end
end
