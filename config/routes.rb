Rails.application.routes.draw do
  post '/weeksleft' => 'weeks#create'
end
