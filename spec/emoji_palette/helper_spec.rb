require 'spec_helper'

describe EmojiPalette::Helper do
  before do
    @h = ::ActionView::Base.new
  end

  it "should have emoji method" do
    @h.should respond_to :emoji
    @h.should respond_to :e
  end

  it "should return empty string on nil" do
    @h.emoji(nil).should == ''
  end

  it "should return empty string on nil" do
    result = @h.emoji('abc<>')
    result.should == 'abc&lt;&gt;'
    result.html_safe?.should be_true
  end

  it "should return html escaped string" do
    @h.emoji('ab&#xE500;').should == "ab&amp;#xE500;"
  end

  context "PC" do
    it "should return emoji image tag" do
      @h.emoji('&#xE63E;').should == "<img src=\"/emoji/sun.gif\" alt=\"sun\" />"
    end
  end

  context "Mobile" do
    before do
      def @h.request
        r = Object.new
        def r.mobile?
          true
        end
        r
      end
    end
    it "should return same codepoint" do
      @h.emoji('&#xE63E;').should == "&#xE63E;"
    end
  end
end

