# coding: utf-8

module EmojiPalette # :nodoc:
  module FormBuilder
    include ActionView::Helpers::UrlHelper
    include ActionView::Helpers::TagHelper

    def emoji_text_field(method, options = {})
      options = options.symbolize_keys

      palette = @template.render(:partial =>'layouts/emoji_palette/emoji_pallete',
                       :locals => {:target => @object_name + '_' + method.to_s})
      options.update({
        :value => ::Jpmobile::Emoticon.utf8_to_unicodecr(@object[method])
      })
      palette + text_field(method,options)
    end

    def emoji_text_area(method, options = {})
      options = options.symbolize_keys

      palette = @template.render(:partial =>'layouts/emoji_palette/emoji_pallete',
                       :locals => {:target => @object_name + '_' + method.to_s})
      options.update({
        :value => ::Jpmobile::Emoticon.utf8_to_unicodecr(@object[method])
      })
      palette + text_area(method,options)
    end
  end
end

