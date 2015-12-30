class PagesController < ApplicationController

  def home
    @events = Event.all

    if @events.present?
      @hash_events = Gmaps4rails.build_markers(@events) do |event, marker|
        marker.lat event.latitude
        marker.lng event.longitude
      end
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

  def error404
    @page_title = '404'
    return show_404
  end

end
