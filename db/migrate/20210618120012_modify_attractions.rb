class ModifyAttractions < ActiveRecord::Migration[6.1]
  def change
    Attraction.create :id_attr => "AT2001", :age => 18, :during => 10, :name => "Roller Coaster", :price => 30, :id_admin => "KP1001", :id_tech => "TST3001"
    Attraction.create :id_attr => "AT2002", :age => 18, :during => 20, :name => "Ferris Wheel", :price => 50, :id_admin => "KP1002", :id_tech => "TST3002"
    Attraction.create :id_attr => "AT2003", :age => 14, :during => 30, :name => "ScaryRoom", :price => 50, :id_admin => "KP1002", :id_tech => "TST3001"
  end
end