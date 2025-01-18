unless defined?(UrlChecker::Engine.routes.url_check_path)
  UrlChecker::Engine.routes.draw do
    get "/check" => "urls#check", :as => :url_check
  end
end