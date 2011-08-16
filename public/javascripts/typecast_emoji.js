jQuery.fn.extend({
  insertAtCaret:
  function(myValue){
    return this.each(function(i) {
      if (document.selection) {
        this.focus();
        sel = document.selection.createRange();
        sel.text = myValue;
        this.focus();
      }
      else if (this.selectionStart || this.selectionStart == '0') {
        var startPos = this.selectionStart;
        var endPos = this.selectionEnd;
        var scrollTop = this.scrollTop;
        this.value = this.value.substring(0, startPos)+myValue+this.value.substring(endPos,this.value.length);
        this.focus();
        this.selectionStart = startPos + myValue.length;
        this.selectionEnd = startPos + myValue.length;
        this.scrollTop = scrollTop;
      } else {
        this.value += myValue;
        this.focus();
      }
    })
  },
  emojiPalette:
  function(target){
    this.find('a').bind('click', function(evt){
      jQuery(target).insertAtCaret(this.title);
      jQuery(this).parent().css("visibility", "hidden");
      return false;
    });
  },
  emojiToggle:
  function(div){
    this.bind('click', function(evt){
      if(div.css("visibility") == 'hidden')
        div.css("visibility", "visible");
      else
        div.css("visibility", "hidden");
      return false;
    });
  }
});

