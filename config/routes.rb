Rails.application.routes.draw do

 resources :sonics do
   collection do
     post :confirm
   end
 end
 
end
