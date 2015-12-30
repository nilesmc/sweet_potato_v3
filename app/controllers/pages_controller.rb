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
    @page = AboutPage.instance
  end

  def help
    @page = HelpPage.instance
  end

  def contact
    @page = ContactPage.instance
  end

  def terms
    @page = TermsPage.instance
  end

  def privacy
    @page = PrivacyPage.instance
  end

  def error404
    @page_title = '404'
    return show_404
  end

end
