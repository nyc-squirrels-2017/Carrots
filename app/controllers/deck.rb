get '/decks' do
  @decks = Deck.all
  erb :'decks/index'
end

get '/decks/:id' do
  @decks = Deck.find(params[:id])
  erb :'decks/show'
end
