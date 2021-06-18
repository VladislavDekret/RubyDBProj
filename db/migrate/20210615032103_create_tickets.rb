class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :id_tick
      t.string :date
      t.string :time
      t.integer :ticket_price
      t.string :id_cust
      t.string :id_tick_termin
    end
  end
end
