UrlChecker::Engine.routes.draw do
  get "/check" => "urls#check", :as => :check
end