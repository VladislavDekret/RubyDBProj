class ModifyCustomers < ActiveRecord::Migration[6.1]
  def change
    Customer.create :id_cust => "C6999", :date => "03.04.2020"
    Customer.create :id_cust => "C7000", :date => "03.04.2020"
    Customer.create :id_cust => "C7001", :date => "07.04.2020"
    Customer.create :id_cust => "C7002", :date => "07.04.2020"
    Customer.create :id_cust => "C7003", :date => "07.04.2020"
  end
end