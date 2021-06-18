class QueryController < ApplicationController
  def index
    @query1 = Attraction.select('DISTINCT attractions.name, tickets.id_tick')
    .from('(attractions INNER JOIN ticket_rows ON attractions.id_attr = ticket_rows.id_attr)
     INNER JOIN tickets ON tickets.id_tick = ticket_rows.id_tick')
    .where('tickets.ticket_price = 50')

    @query2 = Attraction.select('attractions.name, COUNT(tickets.id_tick) AS counter')
    .from('(tickets INNER JOIN ticket_rows ON tickets.id_tick = ticket_rows.id_tick)
     INNER JOIN attractions ON attractions.id_attr = ticket_rows.id_attr')
     .group('attractions.name')

    @query3 = Customer.select('customers.id_cust, COUNT(ticket_rows.id_tick) AS counter')
    .from('(ticket_rows INNER JOIN tickets ON tickets.id_tick = ticket_rows.id_tick)
     INNER JOIN customers ON tickets.id_cust = customers.id_cust')
     .group('customers.id_cust, tickets.id_tick')
     .having("customers.id_cust = 'C6999'")

    @query4 = Admin.select('*')
    .from('admins T1')
    .where("NOT EXISTS(
      SELECT *
      FROM attractions
      WHERE NOT EXISTS (
      SELECT *
      FROM admins T2
      WHERE EXISTS(
        SELECT *
        FROM ticket_rows
        WHERE EXISTS(
          SELECT *
          FROM tickets
          WHERE(
      tickets.time = '10:00'
      AND tickets.id_tick = ticket_rows.id_tick
          )
      AND ticket_rows.id_attr = attractions.id_attr
        )
        AND T2.id_admin=T1.id_admin
      )
      )
      )
      ")

      @query5 = Admin.select('*')
      .from('admins')
      .where("admins.id_admin = 'KP1001' OR admins.id_admin = 'KP1003'")
  end
end
