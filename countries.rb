require 'sinatra'

get '/countries.json' do
  content_type 'application/json'
  File.open('countries.json', 'r').readlines
end
