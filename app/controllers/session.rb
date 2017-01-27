get '/sessions' do
  redirect '/sessions/login'
end

get '/sessions/login' do
  erb :"sessions/new"
end

post '/sessions' do

end
