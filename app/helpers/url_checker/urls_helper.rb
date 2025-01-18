module UrlChecker
  module UrlsHelper
    def url_checker_meta_tag
      tag("meta", name: "url-checker-path", content: url_checker.url_check_path).html_safe
    end
  end
end