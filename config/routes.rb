Rails.application.routes.draw do
 match('brands', {:via => :get, :to => 'brands#index'})
 match('brands/new', {:via => :get, :to => 'brands#new'})
 match('brands', {:via => :post, :to => 'brands#create'})
 match('brands/:id', {:via => :get, :to => 'brands#show'})
 match('brands/:id/edit', {:via => :get, :to => 'brands#edit'})
 match('brands/:id/edit', {:via => [:patch, :put], :to => 'brands#update'})
end
