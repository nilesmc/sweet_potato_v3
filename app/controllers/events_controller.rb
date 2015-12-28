class EventsController < ApplicationController

  def index
    @events = Event.all

    @hash_events = Gmaps4rails.build_markers(@events) do |event, marker|
      marker.lat event.latitude
      marker.lng event.longitude
    end
  end

  def detail
    @item = Event.find_by(params[:slug])
    return show_404 if @item.blank?
  end

end
