require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('./models/pizza.rb')
#RESTFUL ROUTE = path + method + action

#INDEX
get '/pizzas/?' do
  @pizzas = Pizza.all
  erb(:index)
end 

#NEW
get '/pizzas/new' do
  erb(:new)
end 

#CREATE
post '/pizzas' do
  new_pizza = Pizza.new(params)
  new_pizza.save
  redirect "/pizzas"
end 
#SHOW
get '/pizzas/:id' do
  @pizza = Pizza.find(params[:id])
  erb(:show)
end
#EDIT

#UPDATE

#DISTROY
# get '/pizzas/:id' do
#   @pizza = Pizza.delete(params[:id])
#   erb(:DISTROY)
# end 