Rails.application.routes.draw do
  root 'welcome#films'

  get 'welcome', to: 'welcome#show_film'

end
