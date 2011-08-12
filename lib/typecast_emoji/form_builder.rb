# coding: utf-8

module TypecastEmoji # :nodoc:
  module FormBuilder
    include ActionView::Helpers::UrlHelper
    include ActionView::Helpers::TagHelper

    def emoji_text_area(method, options = {})
      options = options.symbolize_keys

      text_area method,options
    end
  end
end

