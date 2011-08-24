# coding: utf-8

module EmojiPalette # :nodoc:
  module FormBuilder
    include ActionView::Helpers::UrlHelper
    include ActionView::Helpers::TagHelper

    def emoji_text_area(method, options = {})
      options = options.symbolize_keys

      palette = @template.render(:partial =>'layouts/emoji_palette/emoji_pallete',
                       :locals => {:target => @object_name + '_' + method.to_s})
      palette + text_area(method,options)
    end
  end
end

