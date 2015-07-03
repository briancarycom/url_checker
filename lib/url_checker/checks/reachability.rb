require 'ethon'

module UrlChecker
  module Checks
    module Reachability
      class << self
        def check(url)
          status = perform_request url
          status == :ok
        end

        protected

        def easy
          @easy ||= Ethon::Easy.new
        end

        def perform_request(url)
          if s3_url?(url)
            easy.http_request url, :get, failonerror: true, followlocation: true, maxredirs: 5, range: '0-1'
          else
            easy.http_request url, :head, failonerror: true, followlocation: true, maxredirs: 5
          end
          easy.perform
        end

        def s3_url?(url)
          !!(URI.parse(url).host =~ /s3\.amazonaws\.com$/)
        end
      end
    end
  end
end