class EventsController < ApplicationController

  def index
    @events = Event.all
    @page = HomePage.instance

    @hash_events = Gmaps4rails.build_markers(@events) do |event, marker|
      marker.lat event.latitude
      marker.lng event.longitude
    end
  end

  def detail
    @item = Event.find_by_slug(params[:slug])
    return show_404 if @item.blank?

    @hash_events = Gmaps4rails.build_markers(@item) do |event, marker|
      marker.lat event.latitude
      marker.lng event.longitude
    end
  end

end
