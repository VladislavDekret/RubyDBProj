class ModifyTechs < ActiveRecord::Migration[6.1]
  def change
    Tech.create :id_tech => "TST3001", :spec => "Mechanic"
    Tech.create :id_tech => "TST3002", :spec => "Electronic"
  end
end