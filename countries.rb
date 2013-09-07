require 'sinatra'

configure do
  enable :cross_origin
end

set :allow_origin, :any

get '/countries.json' do
  content_type 'application/json'
  File.open('countries.json', 'r').readlines
end
