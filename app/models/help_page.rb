class HelpPage < Fae::StaticPage

  @slug = 'help'

  # required to set the has_one associations, Fae::StaticPage will build these associations dynamically
  def self.fae_fields
    {
      headline: { type: Fae::TextField },
      intro: { type: Fae::TextField },
      body: { type: Fae::TextField }
    }
  end

end