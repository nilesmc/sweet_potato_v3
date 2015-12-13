module ApplicationHelper

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
