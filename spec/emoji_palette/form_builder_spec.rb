require 'spec_helper'

describe EmojiPalette::FormBuilder, :type => :helper do
  before do
    @h = ::ActionView::Base.new
    @h.instance_eval do
      def protect_against_forgery?; false; end
    end
    @h.view_paths = "#{File.dirname(__FILE__)}/../../app/views/"
    @article = Article.new :title => 'abc123&#xE63E;&#xE600;'
  end

  it "should have emoji_text_field method" do
    @h.form_for(@article, :url => '') do |f|
      f.should respond_to :emoji_text_field
    end
  end

  it "should have emoji_text_area method" do
    @h.form_for(@article, :url => '') do |f|
      f.should respond_to :emoji_text_area
    end
  end

  it "should show emoji text field" do
    @h.form_for(@article, :url => '') do |f|
      f.emoji_text_field(:title).should == (<<EOT
<a id="emoji_button_article_title" class="emoji_button" href="#"></a>

<div class="emoji_palette" id="emoji_palette_article_title">

<a href="#" title="&amp;#xE63E;" class="emoji sun"></a>
<a href="#" title="&amp;#xE63F;" class="emoji cloud"></a>
<a href="#" title="&amp;#xE640;" class="emoji rain"></a>
<a href="#" title="&amp;#xE641;" class="emoji snow"></a>
<a href="#" title="&amp;#xE642;" class="emoji thunder"></a>
<a href="#" title="&amp;#xE643;" class="emoji typhoon"></a>
<a href="#" title="&amp;#xE644;" class="emoji mist"></a>
<a href="#" title="&amp;#xE645;" class="emoji sprinkle"></a>
<a href="#" title="&amp;#xE646;" class="emoji aries"></a>
<a href="#" title="&amp;#xE647;" class="emoji taurus"></a>
<a href="#" title="&amp;#xE648;" class="emoji gemini"></a>
<a href="#" title="&amp;#xE649;" class="emoji cancer"></a>
<a href="#" title="&amp;#xE64A;" class="emoji leo"></a>
<a href="#" title="&amp;#xE64B;" class="emoji virgo"></a>
<a href="#" title="&amp;#xE64C;" class="emoji libra"></a>
<a href="#" title="&amp;#xE64D;" class="emoji scorpius"></a>
<a href="#" title="&amp;#xE64E;" class="emoji sagittarius"></a>
<a href="#" title="&amp;#xE64F;" class="emoji capricornus"></a>
<a href="#" title="&amp;#xE650;" class="emoji aquarius"></a>
<a href="#" title="&amp;#xE651;" class="emoji pisces"></a>
<a href="#" title="&amp;#xE652;" class="emoji sports"></a>
<a href="#" title="&amp;#xE653;" class="emoji baseball"></a>
<a href="#" title="&amp;#xE654;" class="emoji golf"></a>
<a href="#" title="&amp;#xE655;" class="emoji tennis"></a>
<a href="#" title="&amp;#xE656;" class="emoji soccer"></a>
<a href="#" title="&amp;#xE657;" class="emoji ski"></a>
<a href="#" title="&amp;#xE658;" class="emoji basketball"></a>
<a href="#" title="&amp;#xE659;" class="emoji motorsports"></a>
<a href="#" title="&amp;#xE65A;" class="emoji pocketbell"></a>
<a href="#" title="&amp;#xE65B;" class="emoji train"></a>
<a href="#" title="&amp;#xE65C;" class="emoji subway"></a>
<a href="#" title="&amp;#xE65D;" class="emoji bullettrain"></a>
<a href="#" title="&amp;#xE65E;" class="emoji car"></a>
<a href="#" title="&amp;#xE65F;" class="emoji rvcar"></a>
<a href="#" title="&amp;#xE660;" class="emoji bus"></a>
<a href="#" title="&amp;#xE661;" class="emoji ship"></a>
<a href="#" title="&amp;#xE662;" class="emoji airplane"></a>
<a href="#" title="&amp;#xE663;" class="emoji house"></a>
<a href="#" title="&amp;#xE664;" class="emoji building"></a>
<a href="#" title="&amp;#xE665;" class="emoji postoffice"></a>
<a href="#" title="&amp;#xE666;" class="emoji hospital"></a>
<a href="#" title="&amp;#xE667;" class="emoji bank"></a>
<a href="#" title="&amp;#xE668;" class="emoji atm"></a>
<a href="#" title="&amp;#xE669;" class="emoji hotel"></a>
<a href="#" title="&amp;#xE66A;" class="emoji hours24"></a>
<a href="#" title="&amp;#xE66B;" class="emoji gasstation"></a>
<a href="#" title="&amp;#xE66C;" class="emoji parking"></a>
<a href="#" title="&amp;#xE66D;" class="emoji signaler"></a>
<a href="#" title="&amp;#xE66E;" class="emoji toilet"></a>
<a href="#" title="&amp;#xE66F;" class="emoji restaurant"></a>
<a href="#" title="&amp;#xE670;" class="emoji cafe"></a>
<a href="#" title="&amp;#xE671;" class="emoji bar"></a>
<a href="#" title="&amp;#xE672;" class="emoji beer"></a>
<a href="#" title="&amp;#xE673;" class="emoji fastfood"></a>
<a href="#" title="&amp;#xE674;" class="emoji boutique"></a>
<a href="#" title="&amp;#xE675;" class="emoji hairsalon"></a>
<a href="#" title="&amp;#xE676;" class="emoji karaoke"></a>
<a href="#" title="&amp;#xE677;" class="emoji movie"></a>
<a href="#" title="&amp;#xE678;" class="emoji upwardright"></a>
<a href="#" title="&amp;#xE679;" class="emoji carouselpony"></a>
<a href="#" title="&amp;#xE67A;" class="emoji music"></a>
<a href="#" title="&amp;#xE67B;" class="emoji art"></a>
<a href="#" title="&amp;#xE67C;" class="emoji drama"></a>
<a href="#" title="&amp;#xE67D;" class="emoji event"></a>
<a href="#" title="&amp;#xE67E;" class="emoji ticket"></a>
<a href="#" title="&amp;#xE67F;" class="emoji smoking"></a>
<a href="#" title="&amp;#xE680;" class="emoji nosmoking"></a>
<a href="#" title="&amp;#xE681;" class="emoji camera"></a>
<a href="#" title="&amp;#xE682;" class="emoji bag"></a>
<a href="#" title="&amp;#xE683;" class="emoji book"></a>
<a href="#" title="&amp;#xE684;" class="emoji ribbon"></a>
<a href="#" title="&amp;#xE685;" class="emoji present"></a>
<a href="#" title="&amp;#xE686;" class="emoji birthday"></a>
<a href="#" title="&amp;#xE687;" class="emoji telephone"></a>
<a href="#" title="&amp;#xE688;" class="emoji mobilephone"></a>
<a href="#" title="&amp;#xE689;" class="emoji memo"></a>
<a href="#" title="&amp;#xE68A;" class="emoji tv"></a>
<a href="#" title="&amp;#xE68B;" class="emoji game"></a>
<a href="#" title="&amp;#xE68C;" class="emoji cd"></a>
<a href="#" title="&amp;#xE68D;" class="emoji heart"></a>
<a href="#" title="&amp;#xE68E;" class="emoji spade"></a>
<a href="#" title="&amp;#xE68F;" class="emoji diamond"></a>
<a href="#" title="&amp;#xE690;" class="emoji club"></a>
<a href="#" title="&amp;#xE691;" class="emoji eye"></a>
<a href="#" title="&amp;#xE692;" class="emoji ear"></a>
<a href="#" title="&amp;#xE693;" class="emoji rock"></a>
<a href="#" title="&amp;#xE694;" class="emoji scissors"></a>
<a href="#" title="&amp;#xE695;" class="emoji paper"></a>
<a href="#" title="&amp;#xE696;" class="emoji downwardright"></a>
<a href="#" title="&amp;#xE697;" class="emoji upwardleft"></a>
<a href="#" title="&amp;#xE698;" class="emoji foot"></a>
<a href="#" title="&amp;#xE699;" class="emoji shoe"></a>
<a href="#" title="&amp;#xE69A;" class="emoji eyeglass"></a>
<a href="#" title="&amp;#xE69B;" class="emoji wheelchair"></a>
<a href="#" title="&amp;#xE69C;" class="emoji newmoon"></a>
<a href="#" title="&amp;#xE69D;" class="emoji moon1"></a>
<a href="#" title="&amp;#xE69E;" class="emoji moon2"></a>
<a href="#" title="&amp;#xE69F;" class="emoji moon3"></a>
<a href="#" title="&amp;#xE6A0;" class="emoji fullmoon"></a>
<a href="#" title="&amp;#xE6A1;" class="emoji dog"></a>
<a href="#" title="&amp;#xE6A2;" class="emoji cat"></a>
<a href="#" title="&amp;#xE6A3;" class="emoji yacht"></a>
<a href="#" title="&amp;#xE6A4;" class="emoji xmas"></a>
<a href="#" title="&amp;#xE6A5;" class="emoji downwardleft"></a>
<a href="#" title="&amp;#xE6AC;" class="emoji slate"></a>
<a href="#" title="&amp;#xE6AD;" class="emoji pouch"></a>
<a href="#" title="&amp;#xE6AE;" class="emoji pen"></a>
<a href="#" title="&amp;#xE6B1;" class="emoji shadow"></a>
<a href="#" title="&amp;#xE6B2;" class="emoji chair"></a>
<a href="#" title="&amp;#xE6B3;" class="emoji night"></a>
<a href="#" title="&amp;#xE6B7;" class="emoji soon"></a>
<a href="#" title="&amp;#xE6B8;" class="emoji on"></a>
<a href="#" title="&amp;#xE6B9;" class="emoji end"></a>
<a href="#" title="&amp;#xE6BA;" class="emoji clock"></a>
<a href="#" title="&amp;#xE6CE;" class="emoji phoneto"></a>
<a href="#" title="&amp;#xE6CF;" class="emoji mailto"></a>
<a href="#" title="&amp;#xE6D0;" class="emoji faxto"></a>
<a href="#" title="&amp;#xE6D1;" class="emoji info01"></a>
<a href="#" title="&amp;#xE6D2;" class="emoji info02"></a>
<a href="#" title="&amp;#xE6D3;" class="emoji mail"></a>
<a href="#" title="&amp;#xE6D4;" class="emoji by-d"></a>
<a href="#" title="&amp;#xE6D5;" class="emoji d-point"></a>
<a href="#" title="&amp;#xE6D6;" class="emoji yen"></a>
<a href="#" title="&amp;#xE6D7;" class="emoji free"></a>
<a href="#" title="&amp;#xE6D8;" class="emoji id"></a>
<a href="#" title="&amp;#xE6D9;" class="emoji key"></a>
<a href="#" title="&amp;#xE6DA;" class="emoji enter"></a>
<a href="#" title="&amp;#xE6DB;" class="emoji clear"></a>
<a href="#" title="&amp;#xE6DC;" class="emoji search"></a>
<a href="#" title="&amp;#xE6DD;" class="emoji new"></a>
<a href="#" title="&amp;#xE6DE;" class="emoji flag"></a>
<a href="#" title="&amp;#xE6DF;" class="emoji freedial"></a>
<a href="#" title="&amp;#xE6E0;" class="emoji sharp"></a>
<a href="#" title="&amp;#xE6E1;" class="emoji mobaq"></a>
<a href="#" title="&amp;#xE6E2;" class="emoji one"></a>
<a href="#" title="&amp;#xE6E3;" class="emoji two"></a>
<a href="#" title="&amp;#xE6E4;" class="emoji three"></a>
<a href="#" title="&amp;#xE6E5;" class="emoji four"></a>
<a href="#" title="&amp;#xE6E6;" class="emoji five"></a>
<a href="#" title="&amp;#xE6E7;" class="emoji six"></a>
<a href="#" title="&amp;#xE6E8;" class="emoji seven"></a>
<a href="#" title="&amp;#xE6E9;" class="emoji eight"></a>
<a href="#" title="&amp;#xE6EA;" class="emoji nine"></a>
<a href="#" title="&amp;#xE6EB;" class="emoji zero"></a>
<a href="#" title="&amp;#xE6EC;" class="emoji heart01"></a>
<a href="#" title="&amp;#xE6ED;" class="emoji heart02"></a>
<a href="#" title="&amp;#xE6EE;" class="emoji heart03"></a>
<a href="#" title="&amp;#xE6EF;" class="emoji heart04"></a>
<a href="#" title="&amp;#xE6F0;" class="emoji happy01"></a>
<a href="#" title="&amp;#xE6F1;" class="emoji angry"></a>
<a href="#" title="&amp;#xE6F2;" class="emoji despair"></a>
<a href="#" title="&amp;#xE6F3;" class="emoji sad"></a>
<a href="#" title="&amp;#xE6F4;" class="emoji wobbly"></a>
<a href="#" title="&amp;#xE6F5;" class="emoji up"></a>
<a href="#" title="&amp;#xE6F6;" class="emoji note"></a>
<a href="#" title="&amp;#xE6F7;" class="emoji spa"></a>
<a href="#" title="&amp;#xE6F8;" class="emoji cute"></a>
<a href="#" title="&amp;#xE6F9;" class="emoji kissmark"></a>
<a href="#" title="&amp;#xE6FA;" class="emoji shine"></a>
<a href="#" title="&amp;#xE6FB;" class="emoji flair"></a>
<a href="#" title="&amp;#xE6FC;" class="emoji annoy"></a>
<a href="#" title="&amp;#xE6FD;" class="emoji punch"></a>
<a href="#" title="&amp;#xE6FE;" class="emoji bomb"></a>
<a href="#" title="&amp;#xE6FF;" class="emoji notes"></a>
<a href="#" title="&amp;#xE700;" class="emoji down"></a>
<a href="#" title="&amp;#xE701;" class="emoji sleepy"></a>
<a href="#" title="&amp;#xE702;" class="emoji sign01"></a>
<a href="#" title="&amp;#xE703;" class="emoji sign02"></a>
<a href="#" title="&amp;#xE704;" class="emoji sign03"></a>
<a href="#" title="&amp;#xE705;" class="emoji impact"></a>
<a href="#" title="&amp;#xE706;" class="emoji sweat01"></a>
<a href="#" title="&amp;#xE707;" class="emoji sweat02"></a>
<a href="#" title="&amp;#xE708;" class="emoji dash"></a>
<a href="#" title="&amp;#xE709;" class="emoji sign04"></a>
<a href="#" title="&amp;#xE70A;" class="emoji sign05"></a>
<a href="#" title="&amp;#xE70B;" class="emoji ok"></a>
<a href="#" title="&amp;#xE70C;" class="emoji appli01"></a>
<a href="#" title="&amp;#xE70D;" class="emoji appli02"></a>
<a href="#" title="&amp;#xE70E;" class="emoji t-shirt"></a>
<a href="#" title="&amp;#xE70F;" class="emoji moneybag"></a>
<a href="#" title="&amp;#xE710;" class="emoji rouge"></a>
<a href="#" title="&amp;#xE711;" class="emoji denim"></a>
<a href="#" title="&amp;#xE712;" class="emoji snowboard"></a>
<a href="#" title="&amp;#xE713;" class="emoji bell"></a>
<a href="#" title="&amp;#xE714;" class="emoji door"></a>
<a href="#" title="&amp;#xE715;" class="emoji dollar"></a>
<a href="#" title="&amp;#xE716;" class="emoji pc"></a>
<a href="#" title="&amp;#xE717;" class="emoji loveletter"></a>
<a href="#" title="&amp;#xE718;" class="emoji wrench"></a>
<a href="#" title="&amp;#xE719;" class="emoji pencil"></a>
<a href="#" title="&amp;#xE71A;" class="emoji crown"></a>
<a href="#" title="&amp;#xE71B;" class="emoji ring"></a>
<a href="#" title="&amp;#xE71C;" class="emoji sandclock"></a>
<a href="#" title="&amp;#xE71D;" class="emoji bicycle"></a>
<a href="#" title="&amp;#xE71E;" class="emoji japanesetea"></a>
<a href="#" title="&amp;#xE71F;" class="emoji watch"></a>
<a href="#" title="&amp;#xE720;" class="emoji think"></a>
<a href="#" title="&amp;#xE721;" class="emoji confident"></a>
<a href="#" title="&amp;#xE722;" class="emoji coldsweats01"></a>
<a href="#" title="&amp;#xE723;" class="emoji coldsweats02"></a>
<a href="#" title="&amp;#xE724;" class="emoji pout"></a>
<a href="#" title="&amp;#xE725;" class="emoji gawk"></a>
<a href="#" title="&amp;#xE726;" class="emoji lovely"></a>
<a href="#" title="&amp;#xE727;" class="emoji good"></a>
<a href="#" title="&amp;#xE728;" class="emoji bleah"></a>
<a href="#" title="&amp;#xE729;" class="emoji wink"></a>
<a href="#" title="&amp;#xE72A;" class="emoji happy02"></a>
<a href="#" title="&amp;#xE72B;" class="emoji bearing"></a>
<a href="#" title="&amp;#xE72C;" class="emoji catface"></a>
<a href="#" title="&amp;#xE72D;" class="emoji crying"></a>
<a href="#" title="&amp;#xE72E;" class="emoji weep"></a>
<a href="#" title="&amp;#xE72F;" class="emoji ng"></a>
<a href="#" title="&amp;#xE730;" class="emoji clip"></a>
<a href="#" title="&amp;#xE731;" class="emoji copyright"></a>
<a href="#" title="&amp;#xE732;" class="emoji tm"></a>
<a href="#" title="&amp;#xE733;" class="emoji run"></a>
<a href="#" title="&amp;#xE734;" class="emoji secret"></a>
<a href="#" title="&amp;#xE735;" class="emoji recycle"></a>
<a href="#" title="&amp;#xE736;" class="emoji r-mark"></a>
<a href="#" title="&amp;#xE737;" class="emoji danger"></a>
<a href="#" title="&amp;#xE738;" class="emoji ban"></a>
<a href="#" title="&amp;#xE739;" class="emoji empty"></a>
<a href="#" title="&amp;#xE73A;" class="emoji pass"></a>
<a href="#" title="&amp;#xE73B;" class="emoji full"></a>
<a href="#" title="&amp;#xE73C;" class="emoji leftright"></a>
<a href="#" title="&amp;#xE73D;" class="emoji updown"></a>
<a href="#" title="&amp;#xE73E;" class="emoji school"></a>
<a href="#" title="&amp;#xE73F;" class="emoji wave"></a>
<a href="#" title="&amp;#xE740;" class="emoji fuji"></a>
<a href="#" title="&amp;#xE741;" class="emoji clover"></a>
<a href="#" title="&amp;#xE742;" class="emoji cherry"></a>
<a href="#" title="&amp;#xE743;" class="emoji tulip"></a>
<a href="#" title="&amp;#xE744;" class="emoji banana"></a>
<a href="#" title="&amp;#xE745;" class="emoji apple"></a>
<a href="#" title="&amp;#xE746;" class="emoji bud"></a>
<a href="#" title="&amp;#xE747;" class="emoji maple"></a>
<a href="#" title="&amp;#xE748;" class="emoji cherryblossom"></a>
<a href="#" title="&amp;#xE749;" class="emoji riceball"></a>
<a href="#" title="&amp;#xE74A;" class="emoji cake"></a>
<a href="#" title="&amp;#xE74B;" class="emoji bottle"></a>
<a href="#" title="&amp;#xE74C;" class="emoji noodle"></a>
<a href="#" title="&amp;#xE74D;" class="emoji bread"></a>
<a href="#" title="&amp;#xE74E;" class="emoji snail"></a>
<a href="#" title="&amp;#xE74F;" class="emoji chick"></a>
<a href="#" title="&amp;#xE750;" class="emoji penguin"></a>
<a href="#" title="&amp;#xE751;" class="emoji fish"></a>
<a href="#" title="&amp;#xE752;" class="emoji delicious"></a>
<a href="#" title="&amp;#xE753;" class="emoji smile"></a>
<a href="#" title="&amp;#xE754;" class="emoji horse"></a>
<a href="#" title="&amp;#xE755;" class="emoji pig"></a>
<a href="#" title="&amp;#xE756;" class="emoji wine"></a>
<a href="#" title="&amp;#xE757;" class="emoji shock"></a>
</div>
<input id="article_title" name="article[title]" size="30" type="text" value="abc123&amp;#xE63E;&amp;#xE600;" />
EOT
).chomp
    end
  end

  it "should show emoji text area" do
    @h.form_for(@article, :url => '') do |f|
      f.emoji_text_area(:title).should == (<<EOT
<a id="emoji_button_article_title" class="emoji_button" href="#"></a>

<div class="emoji_palette" id="emoji_palette_article_title">

<a href="#" title="&amp;#xE63E;" class="emoji sun"></a>
<a href="#" title="&amp;#xE63F;" class="emoji cloud"></a>
<a href="#" title="&amp;#xE640;" class="emoji rain"></a>
<a href="#" title="&amp;#xE641;" class="emoji snow"></a>
<a href="#" title="&amp;#xE642;" class="emoji thunder"></a>
<a href="#" title="&amp;#xE643;" class="emoji typhoon"></a>
<a href="#" title="&amp;#xE644;" class="emoji mist"></a>
<a href="#" title="&amp;#xE645;" class="emoji sprinkle"></a>
<a href="#" title="&amp;#xE646;" class="emoji aries"></a>
<a href="#" title="&amp;#xE647;" class="emoji taurus"></a>
<a href="#" title="&amp;#xE648;" class="emoji gemini"></a>
<a href="#" title="&amp;#xE649;" class="emoji cancer"></a>
<a href="#" title="&amp;#xE64A;" class="emoji leo"></a>
<a href="#" title="&amp;#xE64B;" class="emoji virgo"></a>
<a href="#" title="&amp;#xE64C;" class="emoji libra"></a>
<a href="#" title="&amp;#xE64D;" class="emoji scorpius"></a>
<a href="#" title="&amp;#xE64E;" class="emoji sagittarius"></a>
<a href="#" title="&amp;#xE64F;" class="emoji capricornus"></a>
<a href="#" title="&amp;#xE650;" class="emoji aquarius"></a>
<a href="#" title="&amp;#xE651;" class="emoji pisces"></a>
<a href="#" title="&amp;#xE652;" class="emoji sports"></a>
<a href="#" title="&amp;#xE653;" class="emoji baseball"></a>
<a href="#" title="&amp;#xE654;" class="emoji golf"></a>
<a href="#" title="&amp;#xE655;" class="emoji tennis"></a>
<a href="#" title="&amp;#xE656;" class="emoji soccer"></a>
<a href="#" title="&amp;#xE657;" class="emoji ski"></a>
<a href="#" title="&amp;#xE658;" class="emoji basketball"></a>
<a href="#" title="&amp;#xE659;" class="emoji motorsports"></a>
<a href="#" title="&amp;#xE65A;" class="emoji pocketbell"></a>
<a href="#" title="&amp;#xE65B;" class="emoji train"></a>
<a href="#" title="&amp;#xE65C;" class="emoji subway"></a>
<a href="#" title="&amp;#xE65D;" class="emoji bullettrain"></a>
<a href="#" title="&amp;#xE65E;" class="emoji car"></a>
<a href="#" title="&amp;#xE65F;" class="emoji rvcar"></a>
<a href="#" title="&amp;#xE660;" class="emoji bus"></a>
<a href="#" title="&amp;#xE661;" class="emoji ship"></a>
<a href="#" title="&amp;#xE662;" class="emoji airplane"></a>
<a href="#" title="&amp;#xE663;" class="emoji house"></a>
<a href="#" title="&amp;#xE664;" class="emoji building"></a>
<a href="#" title="&amp;#xE665;" class="emoji postoffice"></a>
<a href="#" title="&amp;#xE666;" class="emoji hospital"></a>
<a href="#" title="&amp;#xE667;" class="emoji bank"></a>
<a href="#" title="&amp;#xE668;" class="emoji atm"></a>
<a href="#" title="&amp;#xE669;" class="emoji hotel"></a>
<a href="#" title="&amp;#xE66A;" class="emoji hours24"></a>
<a href="#" title="&amp;#xE66B;" class="emoji gasstation"></a>
<a href="#" title="&amp;#xE66C;" class="emoji parking"></a>
<a href="#" title="&amp;#xE66D;" class="emoji signaler"></a>
<a href="#" title="&amp;#xE66E;" class="emoji toilet"></a>
<a href="#" title="&amp;#xE66F;" class="emoji restaurant"></a>
<a href="#" title="&amp;#xE670;" class="emoji cafe"></a>
<a href="#" title="&amp;#xE671;" class="emoji bar"></a>
<a href="#" title="&amp;#xE672;" class="emoji beer"></a>
<a href="#" title="&amp;#xE673;" class="emoji fastfood"></a>
<a href="#" title="&amp;#xE674;" class="emoji boutique"></a>
<a href="#" title="&amp;#xE675;" class="emoji hairsalon"></a>
<a href="#" title="&amp;#xE676;" class="emoji karaoke"></a>
<a href="#" title="&amp;#xE677;" class="emoji movie"></a>
<a href="#" title="&amp;#xE678;" class="emoji upwardright"></a>
<a href="#" title="&amp;#xE679;" class="emoji carouselpony"></a>
<a href="#" title="&amp;#xE67A;" class="emoji music"></a>
<a href="#" title="&amp;#xE67B;" class="emoji art"></a>
<a href="#" title="&amp;#xE67C;" class="emoji drama"></a>
<a href="#" title="&amp;#xE67D;" class="emoji event"></a>
<a href="#" title="&amp;#xE67E;" class="emoji ticket"></a>
<a href="#" title="&amp;#xE67F;" class="emoji smoking"></a>
<a href="#" title="&amp;#xE680;" class="emoji nosmoking"></a>
<a href="#" title="&amp;#xE681;" class="emoji camera"></a>
<a href="#" title="&amp;#xE682;" class="emoji bag"></a>
<a href="#" title="&amp;#xE683;" class="emoji book"></a>
<a href="#" title="&amp;#xE684;" class="emoji ribbon"></a>
<a href="#" title="&amp;#xE685;" class="emoji present"></a>
<a href="#" title="&amp;#xE686;" class="emoji birthday"></a>
<a href="#" title="&amp;#xE687;" class="emoji telephone"></a>
<a href="#" title="&amp;#xE688;" class="emoji mobilephone"></a>
<a href="#" title="&amp;#xE689;" class="emoji memo"></a>
<a href="#" title="&amp;#xE68A;" class="emoji tv"></a>
<a href="#" title="&amp;#xE68B;" class="emoji game"></a>
<a href="#" title="&amp;#xE68C;" class="emoji cd"></a>
<a href="#" title="&amp;#xE68D;" class="emoji heart"></a>
<a href="#" title="&amp;#xE68E;" class="emoji spade"></a>
<a href="#" title="&amp;#xE68F;" class="emoji diamond"></a>
<a href="#" title="&amp;#xE690;" class="emoji club"></a>
<a href="#" title="&amp;#xE691;" class="emoji eye"></a>
<a href="#" title="&amp;#xE692;" class="emoji ear"></a>
<a href="#" title="&amp;#xE693;" class="emoji rock"></a>
<a href="#" title="&amp;#xE694;" class="emoji scissors"></a>
<a href="#" title="&amp;#xE695;" class="emoji paper"></a>
<a href="#" title="&amp;#xE696;" class="emoji downwardright"></a>
<a href="#" title="&amp;#xE697;" class="emoji upwardleft"></a>
<a href="#" title="&amp;#xE698;" class="emoji foot"></a>
<a href="#" title="&amp;#xE699;" class="emoji shoe"></a>
<a href="#" title="&amp;#xE69A;" class="emoji eyeglass"></a>
<a href="#" title="&amp;#xE69B;" class="emoji wheelchair"></a>
<a href="#" title="&amp;#xE69C;" class="emoji newmoon"></a>
<a href="#" title="&amp;#xE69D;" class="emoji moon1"></a>
<a href="#" title="&amp;#xE69E;" class="emoji moon2"></a>
<a href="#" title="&amp;#xE69F;" class="emoji moon3"></a>
<a href="#" title="&amp;#xE6A0;" class="emoji fullmoon"></a>
<a href="#" title="&amp;#xE6A1;" class="emoji dog"></a>
<a href="#" title="&amp;#xE6A2;" class="emoji cat"></a>
<a href="#" title="&amp;#xE6A3;" class="emoji yacht"></a>
<a href="#" title="&amp;#xE6A4;" class="emoji xmas"></a>
<a href="#" title="&amp;#xE6A5;" class="emoji downwardleft"></a>
<a href="#" title="&amp;#xE6AC;" class="emoji slate"></a>
<a href="#" title="&amp;#xE6AD;" class="emoji pouch"></a>
<a href="#" title="&amp;#xE6AE;" class="emoji pen"></a>
<a href="#" title="&amp;#xE6B1;" class="emoji shadow"></a>
<a href="#" title="&amp;#xE6B2;" class="emoji chair"></a>
<a href="#" title="&amp;#xE6B3;" class="emoji night"></a>
<a href="#" title="&amp;#xE6B7;" class="emoji soon"></a>
<a href="#" title="&amp;#xE6B8;" class="emoji on"></a>
<a href="#" title="&amp;#xE6B9;" class="emoji end"></a>
<a href="#" title="&amp;#xE6BA;" class="emoji clock"></a>
<a href="#" title="&amp;#xE6CE;" class="emoji phoneto"></a>
<a href="#" title="&amp;#xE6CF;" class="emoji mailto"></a>
<a href="#" title="&amp;#xE6D0;" class="emoji faxto"></a>
<a href="#" title="&amp;#xE6D1;" class="emoji info01"></a>
<a href="#" title="&amp;#xE6D2;" class="emoji info02"></a>
<a href="#" title="&amp;#xE6D3;" class="emoji mail"></a>
<a href="#" title="&amp;#xE6D4;" class="emoji by-d"></a>
<a href="#" title="&amp;#xE6D5;" class="emoji d-point"></a>
<a href="#" title="&amp;#xE6D6;" class="emoji yen"></a>
<a href="#" title="&amp;#xE6D7;" class="emoji free"></a>
<a href="#" title="&amp;#xE6D8;" class="emoji id"></a>
<a href="#" title="&amp;#xE6D9;" class="emoji key"></a>
<a href="#" title="&amp;#xE6DA;" class="emoji enter"></a>
<a href="#" title="&amp;#xE6DB;" class="emoji clear"></a>
<a href="#" title="&amp;#xE6DC;" class="emoji search"></a>
<a href="#" title="&amp;#xE6DD;" class="emoji new"></a>
<a href="#" title="&amp;#xE6DE;" class="emoji flag"></a>
<a href="#" title="&amp;#xE6DF;" class="emoji freedial"></a>
<a href="#" title="&amp;#xE6E0;" class="emoji sharp"></a>
<a href="#" title="&amp;#xE6E1;" class="emoji mobaq"></a>
<a href="#" title="&amp;#xE6E2;" class="emoji one"></a>
<a href="#" title="&amp;#xE6E3;" class="emoji two"></a>
<a href="#" title="&amp;#xE6E4;" class="emoji three"></a>
<a href="#" title="&amp;#xE6E5;" class="emoji four"></a>
<a href="#" title="&amp;#xE6E6;" class="emoji five"></a>
<a href="#" title="&amp;#xE6E7;" class="emoji six"></a>
<a href="#" title="&amp;#xE6E8;" class="emoji seven"></a>
<a href="#" title="&amp;#xE6E9;" class="emoji eight"></a>
<a href="#" title="&amp;#xE6EA;" class="emoji nine"></a>
<a href="#" title="&amp;#xE6EB;" class="emoji zero"></a>
<a href="#" title="&amp;#xE6EC;" class="emoji heart01"></a>
<a href="#" title="&amp;#xE6ED;" class="emoji heart02"></a>
<a href="#" title="&amp;#xE6EE;" class="emoji heart03"></a>
<a href="#" title="&amp;#xE6EF;" class="emoji heart04"></a>
<a href="#" title="&amp;#xE6F0;" class="emoji happy01"></a>
<a href="#" title="&amp;#xE6F1;" class="emoji angry"></a>
<a href="#" title="&amp;#xE6F2;" class="emoji despair"></a>
<a href="#" title="&amp;#xE6F3;" class="emoji sad"></a>
<a href="#" title="&amp;#xE6F4;" class="emoji wobbly"></a>
<a href="#" title="&amp;#xE6F5;" class="emoji up"></a>
<a href="#" title="&amp;#xE6F6;" class="emoji note"></a>
<a href="#" title="&amp;#xE6F7;" class="emoji spa"></a>
<a href="#" title="&amp;#xE6F8;" class="emoji cute"></a>
<a href="#" title="&amp;#xE6F9;" class="emoji kissmark"></a>
<a href="#" title="&amp;#xE6FA;" class="emoji shine"></a>
<a href="#" title="&amp;#xE6FB;" class="emoji flair"></a>
<a href="#" title="&amp;#xE6FC;" class="emoji annoy"></a>
<a href="#" title="&amp;#xE6FD;" class="emoji punch"></a>
<a href="#" title="&amp;#xE6FE;" class="emoji bomb"></a>
<a href="#" title="&amp;#xE6FF;" class="emoji notes"></a>
<a href="#" title="&amp;#xE700;" class="emoji down"></a>
<a href="#" title="&amp;#xE701;" class="emoji sleepy"></a>
<a href="#" title="&amp;#xE702;" class="emoji sign01"></a>
<a href="#" title="&amp;#xE703;" class="emoji sign02"></a>
<a href="#" title="&amp;#xE704;" class="emoji sign03"></a>
<a href="#" title="&amp;#xE705;" class="emoji impact"></a>
<a href="#" title="&amp;#xE706;" class="emoji sweat01"></a>
<a href="#" title="&amp;#xE707;" class="emoji sweat02"></a>
<a href="#" title="&amp;#xE708;" class="emoji dash"></a>
<a href="#" title="&amp;#xE709;" class="emoji sign04"></a>
<a href="#" title="&amp;#xE70A;" class="emoji sign05"></a>
<a href="#" title="&amp;#xE70B;" class="emoji ok"></a>
<a href="#" title="&amp;#xE70C;" class="emoji appli01"></a>
<a href="#" title="&amp;#xE70D;" class="emoji appli02"></a>
<a href="#" title="&amp;#xE70E;" class="emoji t-shirt"></a>
<a href="#" title="&amp;#xE70F;" class="emoji moneybag"></a>
<a href="#" title="&amp;#xE710;" class="emoji rouge"></a>
<a href="#" title="&amp;#xE711;" class="emoji denim"></a>
<a href="#" title="&amp;#xE712;" class="emoji snowboard"></a>
<a href="#" title="&amp;#xE713;" class="emoji bell"></a>
<a href="#" title="&amp;#xE714;" class="emoji door"></a>
<a href="#" title="&amp;#xE715;" class="emoji dollar"></a>
<a href="#" title="&amp;#xE716;" class="emoji pc"></a>
<a href="#" title="&amp;#xE717;" class="emoji loveletter"></a>
<a href="#" title="&amp;#xE718;" class="emoji wrench"></a>
<a href="#" title="&amp;#xE719;" class="emoji pencil"></a>
<a href="#" title="&amp;#xE71A;" class="emoji crown"></a>
<a href="#" title="&amp;#xE71B;" class="emoji ring"></a>
<a href="#" title="&amp;#xE71C;" class="emoji sandclock"></a>
<a href="#" title="&amp;#xE71D;" class="emoji bicycle"></a>
<a href="#" title="&amp;#xE71E;" class="emoji japanesetea"></a>
<a href="#" title="&amp;#xE71F;" class="emoji watch"></a>
<a href="#" title="&amp;#xE720;" class="emoji think"></a>
<a href="#" title="&amp;#xE721;" class="emoji confident"></a>
<a href="#" title="&amp;#xE722;" class="emoji coldsweats01"></a>
<a href="#" title="&amp;#xE723;" class="emoji coldsweats02"></a>
<a href="#" title="&amp;#xE724;" class="emoji pout"></a>
<a href="#" title="&amp;#xE725;" class="emoji gawk"></a>
<a href="#" title="&amp;#xE726;" class="emoji lovely"></a>
<a href="#" title="&amp;#xE727;" class="emoji good"></a>
<a href="#" title="&amp;#xE728;" class="emoji bleah"></a>
<a href="#" title="&amp;#xE729;" class="emoji wink"></a>
<a href="#" title="&amp;#xE72A;" class="emoji happy02"></a>
<a href="#" title="&amp;#xE72B;" class="emoji bearing"></a>
<a href="#" title="&amp;#xE72C;" class="emoji catface"></a>
<a href="#" title="&amp;#xE72D;" class="emoji crying"></a>
<a href="#" title="&amp;#xE72E;" class="emoji weep"></a>
<a href="#" title="&amp;#xE72F;" class="emoji ng"></a>
<a href="#" title="&amp;#xE730;" class="emoji clip"></a>
<a href="#" title="&amp;#xE731;" class="emoji copyright"></a>
<a href="#" title="&amp;#xE732;" class="emoji tm"></a>
<a href="#" title="&amp;#xE733;" class="emoji run"></a>
<a href="#" title="&amp;#xE734;" class="emoji secret"></a>
<a href="#" title="&amp;#xE735;" class="emoji recycle"></a>
<a href="#" title="&amp;#xE736;" class="emoji r-mark"></a>
<a href="#" title="&amp;#xE737;" class="emoji danger"></a>
<a href="#" title="&amp;#xE738;" class="emoji ban"></a>
<a href="#" title="&amp;#xE739;" class="emoji empty"></a>
<a href="#" title="&amp;#xE73A;" class="emoji pass"></a>
<a href="#" title="&amp;#xE73B;" class="emoji full"></a>
<a href="#" title="&amp;#xE73C;" class="emoji leftright"></a>
<a href="#" title="&amp;#xE73D;" class="emoji updown"></a>
<a href="#" title="&amp;#xE73E;" class="emoji school"></a>
<a href="#" title="&amp;#xE73F;" class="emoji wave"></a>
<a href="#" title="&amp;#xE740;" class="emoji fuji"></a>
<a href="#" title="&amp;#xE741;" class="emoji clover"></a>
<a href="#" title="&amp;#xE742;" class="emoji cherry"></a>
<a href="#" title="&amp;#xE743;" class="emoji tulip"></a>
<a href="#" title="&amp;#xE744;" class="emoji banana"></a>
<a href="#" title="&amp;#xE745;" class="emoji apple"></a>
<a href="#" title="&amp;#xE746;" class="emoji bud"></a>
<a href="#" title="&amp;#xE747;" class="emoji maple"></a>
<a href="#" title="&amp;#xE748;" class="emoji cherryblossom"></a>
<a href="#" title="&amp;#xE749;" class="emoji riceball"></a>
<a href="#" title="&amp;#xE74A;" class="emoji cake"></a>
<a href="#" title="&amp;#xE74B;" class="emoji bottle"></a>
<a href="#" title="&amp;#xE74C;" class="emoji noodle"></a>
<a href="#" title="&amp;#xE74D;" class="emoji bread"></a>
<a href="#" title="&amp;#xE74E;" class="emoji snail"></a>
<a href="#" title="&amp;#xE74F;" class="emoji chick"></a>
<a href="#" title="&amp;#xE750;" class="emoji penguin"></a>
<a href="#" title="&amp;#xE751;" class="emoji fish"></a>
<a href="#" title="&amp;#xE752;" class="emoji delicious"></a>
<a href="#" title="&amp;#xE753;" class="emoji smile"></a>
<a href="#" title="&amp;#xE754;" class="emoji horse"></a>
<a href="#" title="&amp;#xE755;" class="emoji pig"></a>
<a href="#" title="&amp;#xE756;" class="emoji wine"></a>
<a href="#" title="&amp;#xE757;" class="emoji shock"></a>
</div>
<textarea cols="40" id="article_title" name="article[title]" rows="20">abc123&amp;#xE63E;&amp;#xE600;</textarea>
EOT
).chomp
    end
  end

  it "should show unicode entity for unicode private use area characters" do
    @article.title = @article.title + [ 0xE63E ].pack("U*")
    @h.form_for(@article, :url => '') do |f|
      f.emoji_text_area(:title).split("\n").last.downcase.should ==
        '<textarea cols="40" id="article_title" name="article[title]" rows="20">abc123&amp;#xe63e;&amp;#xe600;&amp;#xe63e;</textarea>'
    end
  end

  it "should work with field with nil value" do
    @article.title = nil
    @h.form_for(@article, :url => '') do |f|
      lambda{ f.emoji_text_field(:title) }.should_not raise_error
      lambda{ f.emoji_text_area(:title) }.should_not raise_error
    end
  end
end

