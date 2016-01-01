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

  def attend
    @user_event = UserEvent.where(user_id: params[:user_id].to_i, event_id: params[:event_id].to_i).first
    if @user_event.present?
      @user_event.destroy
    else
      UserEvent.create(user_id: params[:user_id].to_i, event_id: params[:event_id].to_i)
    end
    render nothing: true
  end

end
