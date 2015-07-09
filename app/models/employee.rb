class Employee < ActiveRecord::Base
  
 has_and_belongs_to_many :peripherals
 attr_accessor :ep_list
 after_save :update_peripherals

  private 
  
  def update_peripherals
    peripherals.delete_all
    selected_peripherals = ep_list.nil? ? [] : ep_list.keys.collect{|id| Peripherals.find_by_id(id)}
    selected_peripherals.each {|ep| self.peripherals << ep}
    puts selected_peripherals
  end
end
