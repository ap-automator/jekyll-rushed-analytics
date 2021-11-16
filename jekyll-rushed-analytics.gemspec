Gem::Specification.new do |s|
  s.name        = 'jekyll-rushed-analytics'
  s.version     = '0.1.15'
  s.date        = '2021-11-16'
  s.summary     = "Jekyll plugin that handle analytic like google analytic, adsense, mpuls, piwik etc"
  s.description = "Plugin to easily add web analytics to your jekyll site without modifying your templates. Supported are: Google Analytics, Piwik, Matomo, MPulse"
  s.authors     = ["Adi Prasetyo", "Hendrik Schneider"]
  s.email       = 'monetize.your.times@gmail.com'
  s.files       = ["lib/jekyll-rushed-analytics.rb"]
  s.files       += Dir["lib/analytics/*.rb"]
  s.homepage    = 'https://github.com/ap-automator/jekyll-rushed-analytics'
  s.license     = 'MIT'
  s.metadata    = { "source_code_uri" => "https://github.com/ap-automator/jekyll-rushed-analytics" }
end
