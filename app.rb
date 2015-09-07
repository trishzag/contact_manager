require 'sinatra'
require 'sinatra/reloader'
require "sinatra/activerecord"

require_relative 'models/contact'
also_reload 'models/contact'

get '/' do
  @contacts = Contact.all
  erb :index
end

get '/index' do
  @contacts = Contact.all
  erb :index
end

get '/contacts/:id' do
  contact = Contact.find(params["id"])
  erb :show, locals: { contact: contact}
end
