class CreateAttractions < ActiveRecord::Migration[6.1]
  def change
    create_table :attractions do |t|
      t.string :id_attr
      t.integer :age
      t.integer :during
      t.string :name
      t.integer :price
      t.string :id_admin
      t.string :id_tech
    end
  end
end
