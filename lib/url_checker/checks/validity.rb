require 'uri'

module UrlChecker
  module Checks
    module Validity
      class << self
        def check(url)
          !! URI.regexp.match(url)
        end
      end
    end
  end
end