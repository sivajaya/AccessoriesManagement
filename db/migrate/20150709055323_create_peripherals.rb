class CreatePeripherals < ActiveRecord::Migration
  def change
    create_table :peripherals do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
