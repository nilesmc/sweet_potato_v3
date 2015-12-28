module Admin
  class EventsController < Fae::BaseController
    helper ::Admin::ApplicationHelper

    def build_assets
      @item.build_hero_image if @item.hero_image.blank?
    end

  end
end
