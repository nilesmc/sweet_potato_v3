module Admin
  class ContentBlocksController < Fae::StaticPagesController

    private

    def fae_pages
      [ContactPage, AboutPage, HelpPage, TermsPage, PrivacyPage]
    end
  end
end
