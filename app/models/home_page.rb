class HomePage < Fae::StaticPage

  @slug = 'home'

  # required to set the has_one associations, Fae::StaticPage will build these associations dynamically
  def self.fae_fields
    {
      hero_image: { type: Fae::Image },
      headline: { type: Fae::TextField },
      intro: { type: Fae::TextField },
      body: { type: Fae::TextField }
    }
  end

end