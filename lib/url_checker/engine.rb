module UrlChecker
  class Engine < ::Rails::Engine
    isolate_namespace UrlChecker
    engine_name "url_checker"

    initializer "url_checker.action_controller" do |app|
      ActiveSupport.on_load :action_controller do
        helper UrlChecker::UrlsHelper
      end
    end
  end
end