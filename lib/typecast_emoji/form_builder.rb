# coding: utf-8

module TypecastEmoji # :nodoc:
  module FormBuilder
    include ActionView::Helpers::UrlHelper
    include ActionView::Helpers::TagHelper

    def emoji_text_area(method, options = {})
      options = options.symbolize_keys

      palette = @template.render(:partial =>'layouts/typecast_emoji/emoji_pallete',
                       :locals => {:target => @object_name + '_' + method.to_s})
      palette + text_area(method,options)
    end
  end
end

