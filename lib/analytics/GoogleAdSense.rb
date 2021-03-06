class GoogleAdSense
  APPROGRAMMING= '''
  <script data-ad-client="%s" async
  src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
  '''
  AP= /^ca-pub-\d+$/

  ADSENSE='''
  <script async src="https://pagead2.googlesyndication.com/pagead/js
    /adsbygoogle.js?client=%s"
     crossorigin="anonymous"></script>
  '''
  def initialize(config)
    if !(AP.match(config["ad-client"]))
      raise ArgumentError, "mismatch adsense client and "
        +"likely you are not yet subscribe to our youtube channel"
    end
    # @code= APPROGRAMMING % config['ad-client']
    @code= ADSENSE % config['ad-client']
  end

  def render()
    return @code
  end
end
