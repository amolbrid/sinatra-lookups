require 'sinatra'

get '/' do
  send_file 'countries.json', :disposition => 'inline', :type => 'application/json'
end

