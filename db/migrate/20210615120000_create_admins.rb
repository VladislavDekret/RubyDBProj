class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|
      t.string :id_admin
      t.string :surname
      t.string :name
      t.string :lastname
      t.string :phone
      t.string :email
      t.string :position

      t.timestamps
    end
  end
end
