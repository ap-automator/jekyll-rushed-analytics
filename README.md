[![Build Status](https://app.travis-ci.com/ap-automator/jekyll-rushed-analytics.svg?branch=master)](https://app.travis-ci.com/ap-automator/jekyll-rushed-analytics)
![](http://ruby-gem-downloads-badge.herokuapp.com/jekyll-rushed-analytics?type=total?metric=true)
[![Maintainability](https://api.codeclimate.com/v1/badges/1916a0d03d7fec0ce815/maintainability)](https://codeclimate.com/github/ap-automator/jekyll-rushed-analytics/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/1916a0d03d7fec0ce815/test_coverage)](https://codeclimate.com/github/ap-automator/jekyll-rushed-analytics/test_coverage)

# Jekyll::analytics
Webanalytics for Jekyll.

There are many tutorials online to add analytics to Jekyll by extending the template. Jekyll-analytics is here to take care of this. Just install the plugin, configure it and you are done :)

Jekyll-analytics: Webanalytics made easy.

Supported:
  - [Google Analytics](https://analytics.google.com/analytics/web/)
  - [Google AdSense](https://www.google.com/adsense/start/)
  - [Matomo](https://matomo.org/)
  - [Piwik](https://piwik.org/)
  - [mPulse](https://www.soasta.com/performance-monitoring/)
  - [Plausible](https://plausible.io)

## Installation

Add this to your `Gemfile`:

```
gem 'jekyll-rushed-analytics'
```
Then execute
```
$ bundle
```
Or install it yourself
```
gem install jekyll-rushed-analytics
```

## Configuration
Edit `_config.yml` to use the plugin:
```
plugins:
  - jekyll-rushed-analytics
```

Configure the plugin in `_config.yml` by adding:

```yml
jekyll-rushed-analytics:
  GoogleAnalytics:   # Add, if you want to track with Google Analytics (Legacy)
    id: UA-123-456          # Required - replace with your tracking id
    anonymizeIp: false      # Optional - Default: false - set to true for anonymized tracking
  GoogleAdSense: # Add, if you want add adSense
    ad-client: ca-pub-xxxxx # Required - replace with your ad client
  GoogleAnalytics4:          # Add, if you want to track with Google Analytics 4
    measurement_id: foo-bar-baz # Required - replace with your measurement id

  Matomo:                   # Add, if you want to track with Matomo (former Piwik Analytics)
    url: matomo.example.com # Required - url to Matomo installation without trailing /
    siteId: "1234"          # Required - replace with your Matomo site id (Write id as string)

  Piwik:                    # Add, if you want to track with Piwik
    url: piwik.example.com  # Required - url to Piwik installation without trailing /
    siteId: "1234"          # Required - replace with your Piwik site id (Write id as string)

  MPulse:                   # Add if you want to track performance with mPulse
    apikey: XXXXX-YYYYY-ZZZZZ-AAAAA-23456   # Required - replace with your mPulse API key

  Plausible:
    domain: 'example.com'   # The domain configured in plausible
    source: 'https://plausible.example.com/js/plausible.js' # The source of the javascript
```

<aside>
Google Analytics (legacy) with a `UA-` ID and Google Analytics 4 with a `G-` ID can be used simultaneously.
</aside>

## Usage
Tracking will be disabled in development mode. To enable production mode set enviroment variable JEKYLL_ENV=production.
Github pages automatically sets JEKYLL_ENV to production.
For testing use
```
$ JEKYLL_ENV=production jekyll serve
```

## Embed your youtube subscribe button
  To enable youtube [subscribe button](https://developers.google.com/youtube/youtube_subscribe_button), add this property on config/pluginname.
```yml
  Utube:
    channelData: ap.programming # replace with your own
```

Then you can render it on your post or template.
```html
  {% include WIP.html %}
```
## Contributing

This just a fork, my general our general contributing guideline not yet stated!
https://linktr.ee/sukrosono
