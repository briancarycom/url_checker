require "url_checker/version"

require "url_checker/checks/validity"
require "url_checker/checks/reachability"
require "url_checker/engine"

module UrlChecker

  class << self
    def check(uri)
      UrlChecker::Checks::Validity.check(uri) &&
        UrlChecker::Checks::Reachability.check(uri)
    end
  end

end
