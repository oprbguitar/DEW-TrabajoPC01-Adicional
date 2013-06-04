Radioapp::Application.routes.draw do
  get "welcome/index"
  root :to => 'welcome#index'
   match 'listalbum', :to => 'home#listalbums'
  match 'listartist', :to => 'home#listartists'
  match 'listTrack', :to => 'home#listTracks'
end

