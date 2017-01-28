get '/decks/:d_id/rounds/:r_id/cards/:id' do

  @deck
  @card = Card.find_by_id(params[:id])
  erb :"/cards/show"
end
