class ModifyTickets < ActiveRecord::Migration[6.1]
  def change
    Ticket.create :id_tick => "T4001", :date => "07.04.2020", :time => "10:00", :ticket_price => "30", :id_cust => "C7001", :id_tick_termin => "TT9001"
    Ticket.create :id_tick => "T4002", :date => "07.04.2020", :time => "11:00", :ticket_price => "50", :id_cust => "C7002", :id_tick_termin => "TT9001"
    Ticket.create :id_tick => "T4003", :date => "07.04.2020", :time => "12:00", :ticket_price => "100", :id_cust => "C7003", :id_tick_termin => "TT9002"
    Ticket.create :id_tick => "T4004", :date => "03.04.2020", :time => "10:00", :ticket_price => "80", :id_cust => "C6999", :id_tick_termin => "TT9001"
    Ticket.create :id_tick => "T4005", :date => "03.04.2020", :time => "12:00", :ticket_price => "50", :id_cust => "C7000", :id_tick_termin => "TT9002"
  end
end