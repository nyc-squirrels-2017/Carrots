get '/decks' do
  @decks = Deck.all
  erb :'decks/index'
end

get '/decks/:id' do
  require_login
  @deck = Deck.find(params[:id])
  erb :'decks/show'
end
