# coding: utf-8

require 'jpmobile'

module EmojiPalette
  require 'emoji_palette/engine' if defined?(Rails)
  
  autoload :Helper,      'emoji_palette/helper'
  autoload :FormBuilder, 'emoji_palette/form_builder'
  module RailsAdmin
    autoload :EmojiText, 'emoji_palette/rails_admin/emoji_text'
  end
end

::Jpmobile::Emoticon.const_set("UNICODE_TO_IMAGE",
  YAML.load(File.read("#{File.dirname(__FILE__)}/../data/emoticon.yaml"))
)

ActiveSupport.on_load(:action_view) do
  ActionView::Base.send(:include, EmojiPalette::Helper)
  ActionView::Helpers::FormBuilder.send(:include, EmojiPalette::FormBuilder)
end

if defined?(::RailsAdmin)
  ::RailsAdmin::Config::Fields::Types.register(:emoji_text, ::EmojiPalette::RailsAdmin::EmojiText)
end
