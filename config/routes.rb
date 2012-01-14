Pinterest::Application.routes.draw do
  devise_for :users, :path_names => { :sign_up => "register" , :sign_in => "login"}    

  root :to => "home#index"
end
