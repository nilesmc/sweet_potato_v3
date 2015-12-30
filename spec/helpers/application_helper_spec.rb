require 'spec_helper'

describe ApplicationHelper do

  describe 'full_title' do
    it 'should include the page title' do
      @page_title = "Foo"
      expect(full_title).to match(/Foo/)
    end

    it 'should include the base title' do
      @page_title = "Foo"
      expect(full_title).to match(/^Sweet Potato/)
    end

    it 'should not include a bar for the home page' do
      @page_title = ""
      expect(full_title).not_to match(/\|/)
    end
  end
end
