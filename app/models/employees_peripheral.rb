class EmployeesPeripheral < ActiveRecord::Base
  belongs_to :employee
  belongs_to :peripheral
end
