Rails.application.routes.draw do
 

 match('/', {:via => :get, :to => 'brands#index'})
 match('brands/new', {:via => :get, :to => 'brands#new'})
 match('brands', {:via => :post, :to => 'brands#create'})
 match('brands/:id', {:via => :get, :to => 'brands#show'})
 match('brands/:id/edit', {:via => :get, :to => 'brands#edit'})
 match('brands/:id/edit', {:via => [:patch, :put], :to => 'brands#update'})
 match('brands/:id/delete', {:via => :get, :to => 'brands#delete'})
 match('brands/:id', {:via => :delete, :to => 'brands#destroy'})
 match('shoes', {:via => :get, :to => 'shoes#index'})
 match('shoes/new', {:via => :get, :to => 'shoes#new'})
 match('shoes', {:via => :post, :to => 'shoes#create'})
 match('shoes/:id', {:via => :get, :to => 'shoes#show'})
 match('shoes/:id/edit', {:via => :get, :to => 'shoes#edit'})
 match('shoes/:id/edit', {:via => [:patch, :put], :to => 'shoes#update'})
 match('shoes/:id/delete', {:via => :get, :to => 'shoes#delete'})
 match('shoes/:id', {:via => :delete, :to => 'shoes#destroy'})
end
