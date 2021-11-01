# classy name for youtube
class Utube
  SETUP= <<~OEF
  <script src="https://apis.google.com/js/platform.js">
  </script>
  OEF
  def initialize()
    @WIDGET= '''
    <div class="g-ytsubscribe" data-channel="ap.programming"
    data-layout="full" data-count="hidden"></div>'''
  end
  def init
    WIDGET.sub! 'ap.programming', 'config.foo'
  end
  def renderHtml()
    return SETUP
  end
  def writeHtml()
    u= File.new('utube.html', 'a+')
    u.puts(SETUP)
    u.puts(WIDGET)
    return u.close
  end
end
