UrlChecker::Engine.routes.draw do
  get "/check" => "urls#check", :as => :url_check
end