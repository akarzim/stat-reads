module ApplicationHelper
  def flash_message
    flash.map do |key, msg|
      next if msg.blank?
      content_tag :div, class: "flash-#{key}" do
        content_tag :span, msg.gsub('\n', '<br>').html_safe
      end
    end.join.html_safe
  end
end
