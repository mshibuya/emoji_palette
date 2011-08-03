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
      return str if request.try(:mobile?)
      Jpmobile::Emoticon.utf8_to_unicodecr(str).gsub(/&#x[0-9A-Fa-f]{4};/) do |code|
        if filename = ::Jpmobile::Emoticon::UNICODE_TO_IMAGE[code[3,4].upcase]
          "<img src=\"/emoji/#{filename}.gif\" alt=\"#{filename}\" />".html_safe
        else
          code
        end
      end
    end
  end
end

