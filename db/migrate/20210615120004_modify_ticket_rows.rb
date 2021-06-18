class ModifyTicketRows < ActiveRecord::Migration[6.1]
  def change
    TicketRow.create :id_tick => "T4001", :id_attr => "AT2001", :row_price => 30
    TicketRow.create :id_tick => "T4002", :id_attr => "AT2002", :row_price => 50
    TicketRow.create :id_tick => "T4003", :id_attr => "AT2002", :row_price => 50
    TicketRow.create :id_tick => "T4003", :id_attr => "AT2003", :row_price => 50
    TicketRow.create :id_tick => "T4004", :id_attr => "AT2001", :row_price => 30
    TicketRow.create :id_tick => "T4004", :id_attr => "AT2002", :row_price => 50
    TicketRow.create :id_tick => "T4005", :id_attr => "AT2003", :row_price => 50
  end
end