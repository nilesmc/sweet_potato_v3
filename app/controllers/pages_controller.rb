class PagesController < ApplicationController

  def home
    @events = Event.all

    @hash = Gmaps4rails.build_markers(@events) do |event, marker|
      marker.lat event.latitude
      marker.lng event.longitude
    end
  end

  def about
  end

  def help
  end

  def contact
  end

  def terms
  end

  def privacy
  end

end
