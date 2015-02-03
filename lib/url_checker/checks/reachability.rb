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
          easy.http_request url, :head, failonerror: true, followlocation: true, maxredirs: 5
          easy.perform
        end
      end
    end
  end
end