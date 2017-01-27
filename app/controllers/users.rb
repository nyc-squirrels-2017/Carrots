get '/users' do
  redirect '/'
end

get '/users/new' do
  erb :"users/new"
end

post '/users' do
  user = User.new(params[:user])
  if user.save
    session[:user_id]
    redirect '/users'
  else
    @errors = user.errors.full_messages
    erb :"users/new"
  end
end
