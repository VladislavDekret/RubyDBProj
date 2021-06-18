class CreateTeches < ActiveRecord::Migration[6.1]
  def change
    create_table :teches do |t|
      t.string :id_tech
      t.string :spec

      t.timestamps
    end
  end
end
