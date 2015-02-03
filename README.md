# UrlChecker

A library for validating URLs.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'url_checker'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install url_checker

## Usage

Require UrlChecker JS in your application.js

```
//= require url-checker
```

Mount UrlChecker Engine in your routes.rb

```
mount UrlChecker::Engine, at: "/url_checker"
```

Add UrlChecker meta tag in your layout

```
<%= url_checker_meta_tag %>
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/url_checker/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
