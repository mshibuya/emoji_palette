require 'rails_admin/config/fields/base'

module TypecastEmoji
  module RailsAdmin
    class EmojiText < ::RailsAdmin::Config::Fields::Base
      @view_helper = :emoji_text_area

      register_instance_option(:formatted_value) do
        bindings[:view].emoji(value)
      end
    end
  end
end
