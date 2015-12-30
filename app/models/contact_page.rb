class ContactPage < Fae::StaticPage

  @slug = 'contact'

  # required to set the has_one associations, Fae::StaticPage will build these associations dynamically
  def self.fae_fields
    {
      headline: { type: Fae::TextField },
      intro: { type: Fae::TextArea },
      body: { type: Fae::TextArea },
      email: { type: Fae::TextField },
      phone: { type: Fae::TextField }
    }
  end

end