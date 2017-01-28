before '/decks/*' do
  require_login
end

get '/decks' do
  @decks = Deck.all
  erb :'decks/index'
end

get '/decks/:id' do
  @deck = Deck.find_by_id(params[:id])
  erb :'decks/show'
end
