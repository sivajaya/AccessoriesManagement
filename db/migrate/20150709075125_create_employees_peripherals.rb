class CreateEmployeesPeripherals < ActiveRecord::Migration
  def change
    create_table :employees_peripherals do |t|
      t.references :employee, index: true, foreign_key: true
      t.references :peripheral, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
