# coding: utf-8

module EmojiPalette
  module Helper
    def emoji(str)
      return ''.html_safe unless str
      html_escape(::Jpmobile::Emoticon.utf8_to_unicodecr(str)).gsub(/&amp;#x[0-9A-Fa-f]{4};/) do |code|
        if filename = ::Jpmobile::Emoticon::UNICODE_TO_IMAGE[code[7,4].upcase]
          if !request.try(:mobile?)
            "<img src=\"/emoji/#{filename}.gif\" alt=\"#{filename}\" />".html_safe
          else
            code.gsub(/&amp;/, '&')
          end
        else
          code
        end
      end.html_safe
    end
    alias_method :e, :emoji
  end
end


