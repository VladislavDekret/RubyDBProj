class ModifyAdmins < ActiveRecord::Migration[6.1]
  def change
    Admin.create :id_admin => "KP1001", :surname => "Babich", :name => "Petro", :lastname => "Vasilovich", :phone => "+380958539145", :email => "p.babich@gmail.com", :position => "manager"
    Admin.create :id_admin => "KP1002", :surname => "Zelenskiy", :name => "Vasil", :lastname => "Petrovich", :phone => "+380848539321", :email => "v.zelenskiy@gmail.com", :position => "manager"
    Admin.create :id_admin => "KP1003", :surname => "Nuel", :name => "Gabel", :lastname => "Henelovych", :phone => "+380958539147", :email => "g.nuel@gmail.com", :position => "co-op leader"
    Admin.create :id_admin => "KP1004", :surname => "McDilan", :name => "Dilan", :lastname => "Kiroovych", :phone => "+380958539149", :email => "dil.dil@gmail.com", :position => "game dev"
  end
end