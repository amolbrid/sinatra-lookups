require 'sinatra'
require 'sinatra/cross_origin'

configure do
  enable :cross_origin

  set :allow_origin, :any
end

get '/countries.json' do
  content_type 'application/json'
  File.open('countries.json', 'r').readlines
end
