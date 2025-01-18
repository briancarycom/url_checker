unless UrlChecker::Engine.routes.routes.find { |r| r.name == 'url_check' }
  UrlChecker::Engine.routes.draw do
    get "/check" => "urls#check", :as => :url_check
  end
end