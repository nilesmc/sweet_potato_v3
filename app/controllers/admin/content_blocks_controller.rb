module Admin
  class ContentBlocksController < Fae::StaticPagesController

    private

    def fae_pages
      [ContactPage, AboutPage, HelpPage, TermsPage, PrivacyPage, HomePage]
    end
  end
end
