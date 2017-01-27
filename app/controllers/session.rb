get '/sessions' do
  redirect '/sessions/login'
end

# login logic
get '/sessions/login' do
  erb :"sessions/new"
end

post '/sessions' do
  user = User.find_by_username(params[:user][:username])

  if user && user.authenticate(params[:user][:password])
    add_session(user.id)
    redirect '/'
  else
    @errors = ['Invalid Username or Password']
    erb :"sessions/new"
  end
end

# logout logic
get '/sessions/logout' do
  remove_session
  redirect '/'
end
