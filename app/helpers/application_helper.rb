module ApplicationHelper

  # checks to see that carrier wave image object is present and there is a file
  def asset_and_url_present?(asset_object)
    asset_object.present? && asset_object.asset.present? && asset_object.asset.url.present?
  end

  # displays fields that use either markdown or html
  def kramdown(string)
    return if string.blank?
    clean_string = sanitize_inline_html(string)
    Kramdown::Document.new(clean_string).to_html.html_safe
  end

  # used by the kramdown method to strip the style tags off elements in fields that use either markdown or html
  def sanitize_inline_html(string)
    doc = Nokogiri::HTML::DocumentFragment.parse(string)
    doc.css('*').remove_attr('style')
    return doc.to_s
  end

  def page_title
    if @page_title.present?
      @page_title
    else
      'Sweet Potato'
    end
  end

  def body_class
    "#{controller_name} #{action_name}"
  end

end
