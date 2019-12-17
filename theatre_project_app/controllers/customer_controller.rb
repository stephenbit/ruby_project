require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/customer.rb')
require_relative('../models/show.rb')
also_reload('../models/*')


get '/customers/?' do
  @customers = Customer.all
  erb(:"customers/index")
end

get 'customers/:id' do
  @customers = Customer.find(params['id'].to_i)
  erb(:"customers/customer")
end
