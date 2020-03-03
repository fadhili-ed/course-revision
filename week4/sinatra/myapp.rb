require 'sinatra'
get '/' do
    "Hello World!"
end
get '/:name' do
    params.to_s
end