# coding: utf-8

module EmojiPalette
  require 'emoji_palette/engine' if defined?(Rails)
  
  autoload :FormBuilder, 'emoji_palette/form_builder'
  module RailsAdmin
    autoload :EmojiText, 'emoji_palette/rails_admin/emoji_text'
  end
end

Jpmobile::Emoticon.const_set("UNICODE_TO_IMAGE",
  YAML.load(File.read("#{File.dirname(__FILE__)}/../data/emoticon.yaml"))
)

ActiveSupport.on_load(:action_view) do
  ActionView::Base.class_eval do
    def emoji(str)
      return ''.html_safe unless str
      html_escape(Jpmobile::Emoticon.utf8_to_unicodecr(str)).gsub(/&amp;#x[0-9A-Fa-f]{4};/) do |code|
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

  ActionView::Helpers::FormBuilder.send(:include, EmojiPalette::FormBuilder)

end

if defined?(::RailsAdmin)
  ::RailsAdmin::Config::Fields::Types.register(:emoji_text, ::EmojiPalette::RailsAdmin::EmojiText)
end
