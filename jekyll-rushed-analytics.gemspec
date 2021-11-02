Gem::Specification.new do |s|
  s.name        = 'jekyll-rushed-analytics'
  s.version     = '0.1.12-apha1'
  s.date        = '2021-06-07'
  s.summary     = "Jekyll plugin that handle analytic like google analytic, mpuls, piwik etc"
  s.description = "Plugin to easily add web analytics to your jekyll site without modifying your templates. Supported are: Google Analytics, Piwik, Matomo, MPulse"
  s.authors     = ["Adi Prasetyo", "Hendrik Schneider"]
  s.email       = 'monetize.your.times@gmail.com'
  s.files       = ["jekyll-rushed-analytics.gemspec", "lib/jekyll-rushed-analytics.rb"
    "lib/analytics/GoogleAnalytics.rb",
    "lib/analytics/GoogleAdSense.rb", "lib/analytics/Piwik.rb", "lib/analytics/Matomo.rb",
    "lib/analytics/MPulse.rb"]
  s.homepage    = 'https://github.com/ap-automator/jekyll-rushed-analytics'
  s.license     = 'MIT'
  s.metadata    = { "source_code_uri" => "https://github.com/ap-automator/jekyll-rushed-analytics" }
end
