get '/decks/:d_id/rounds/:round_num/cards' do
  @round = current_user.rounds.create(deck_id: params[:d_id])
  session[:card] = 1
  redirect "/decks/#{@round.deck.id}/rounds/#{params[:round_num]}/cards/1"
end

get '/decks/:d_id/rounds/:round_num/cards/:id' do
  @round = current_user.rounds[-1]
  @deck = @round.deck
  @card = @deck.cards[session[:card] - 1]

  erb :"/cards/show"
end

post '/decks/:d_id/rounds/:round_num/cards' do
    @round = @current_user.rounds[-1]
    @deck = @round.deck
    @card = Card.find_by_id(params[:guess][:card_id])

    response = @card.answer == params[:guess][:response]
    #
    # @round.guesses.create(
    #   response: response,
    #   card_id: @card.id
    # )

    # if response == true
    #  @message == correct!
    # render the cards/show page with the message
    # else
    #  @message == incorrect!
    # render the cards/show page with the message
    # end

end
