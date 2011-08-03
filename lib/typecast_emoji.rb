# coding: utf-8

module TypecastEmoji
  require 'typecast_emoji/engine' if defined?(Rails)
end

module Jpmobile
  module Emoticon
    UNICODE_TO_IMAGE =
        YAML.load(File.read("#{File.dirname(__FILE__)}/../data/emoticon.yaml"))
  end
end

ActiveSupport.on_load(:action_view) do
  ActionView::Base.class_eval do
    def e(str)
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
  end
end

