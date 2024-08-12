class CreateProponents < ActiveRecord::Migration[7.1]
  def change
    create_table :proponents do |t|
      t.string :name
      t.string :document
      t.date :born_in
      t.string :street
      t.integer :number
      t.string :district
      t.string :city
      t.string :state
      t.string :cep
      t.string :phone
      t.string :phone2
      t.decimal :salary, scale: 2, precision: 10

      t.timestamps
    end
  end
end
