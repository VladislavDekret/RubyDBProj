class CreateTicketRows < ActiveRecord::Migration[6.1]
  def change
    create_table :ticket_rows do |t|
      t.string :id_tick
      t.string :id_attr
      t.integer :row_price
    end
  end
end
