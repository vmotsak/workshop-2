Rails.application.routes.draw do
  devise_for :users
  root 'visitors#index'

  resources :students do
    get :subjects
  end

  resources :teachers
  resources :visitors, only: [:index]
  get 'subjects', to: 'reports#subjects',as: 'report_subjects'
end
