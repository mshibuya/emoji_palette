require 'rails_admin/config/fields/base'

module EmojiPalette
  module RailsAdmin
    class EmojiString < ::RailsAdmin::Config::Fields::Base
      @view_helper = :emoji_text_field

      register_instance_option(:formatted_value) do
        bindings[:view].emoji(value)
      end
    end
  end
end
