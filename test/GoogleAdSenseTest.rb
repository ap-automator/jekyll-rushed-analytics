require_relative "../lib/analytics/GoogleAdSense.rb"
require "test/unit"

class TestGoogleAdSense < Test::Unit::TestCase
    def test_init
        assert_raise( ArgumentError ) { GoogleAdSense.new( {"ad-client" => "123-456"} ) }
        assert_instance_of(GoogleAdSense, GoogleAdSense.new( {"ad-client" => "ca-pub-123456"} ))
    end

    def test_default_tracking_string
        adsense = GoogleAdSense.new({"ad-client" => "ca-pub-123456"})
        assert_equal(googleAnalytics.render(),
        ```
        <script async src="https://pagead2.googlesyndication.com/pagead/js
          /adsbygoogle.js?client=ca-pub-123456"
           crossorigin="anonymous"></script>```)
    end
end
