
get '/users/:id' do
   @user = User.find_by(id: params[:id])
erb :users
end
