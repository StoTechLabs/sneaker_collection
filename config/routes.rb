Rails.application.routes.draw do
 match('brands', {:via => :get, :to => 'brands#index'})
 match('brands/new', {:via => :get, :to => 'brands#new'})
 match('brands', {:via => :post, :to => 'brands#create'})
end
