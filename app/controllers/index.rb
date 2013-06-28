get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/posts' do

  erb :posts
end
