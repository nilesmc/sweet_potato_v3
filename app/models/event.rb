class Event < ActiveRecord::Base
  include Fae::BaseModelConcern

  def fae_display_field
    title
  end

end
