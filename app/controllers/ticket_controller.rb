class TicketController < ApplicationController
  def index
  end
  def create
    @attra = Attraction.select('*')
  end
  def create_row
  end
end
