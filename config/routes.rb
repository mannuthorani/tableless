Rails.application.routes.draw do

  resources :feedbacks, :only => [:new, :create]
  get 'feedbacks/success' => 'feedbacks#success', as: :success

end
