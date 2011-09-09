require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe EmojiPalette do
  it "should be valid" do
    EmojiPalette.should be_a(Module)
  end
end
