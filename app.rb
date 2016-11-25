require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/json'

set :bind, '0.0.0.0'

get '/' do
  json articles: [{ id: 'abc', title: 'who' }]
end
