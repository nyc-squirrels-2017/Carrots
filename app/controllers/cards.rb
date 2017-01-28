get '/decks/:d_id/rounds/:r_id/cards/:id' do
  @deck = Deck.find_by_id(params[:d_id])
  @card = Card.find_by_id(params[:id])
  erb :"/cards/show"
end
