Rails.application.routes.draw do
  root 'home#index'

  get 'webgl',                                       to: 'webgl#index',   as: 'webgl_index'
end
