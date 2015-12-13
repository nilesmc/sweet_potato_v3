class Event < ActiveRecord::Base
  include Fae::BaseModelConcern

  has_one :hero_image, -> { where(attached_as: 'hero_image') },
    as: :imageable,
    class_name: '::Fae::Image',
    dependent: :destroy
  accepts_nested_attributes_for :hero_image, allow_destroy: true

  validates :title, presensce: true

  validates :slug,
    uniqueness: true,
    format: {
      with: Fae.validation_helpers.slug_regex,
      message: "no spaces or special characters",
      multiline: true
    }, allow_blank: true

  def fae_display_field
    title
  end

end
