require 'uri'

module UrlChecker
  module Checks
    module Validity
      class << self
        URI_REGEX = /\A#{URI.regexp}\Z/x

        def check(url)
          !! URI_REGEX.match(url)
        end
      end
    end
  end
end