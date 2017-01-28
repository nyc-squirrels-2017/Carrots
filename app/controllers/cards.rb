get '/decks/:d_id/rounds/:round_num/cards' do
  @round = current_user.rounds.create(deck_id: params[:d_id])
  session[:card] = 1
  redirect "/decks/#{@round.deck.id}/rounds/#{params[:round_num]}/cards/1"
end

get '/decks/:d_id/rounds/:round_num/cards/:id' do
    @round = current_user.rounds[-1]
    @deck = @round.deck
  if @deck.cards.size < session[:card]
    session[:card] = nil
    redirect "/"
  else
    @card = @deck.cards[session[:card] - 1]
    erb :"/cards/show"
  end
end

post '/decks/:d_id/rounds/:round_num/cards' do
    @round = @current_user.rounds[-1]
    @deck = @round.deck
    @card = Card.find_by_id(params[:guess][:card_id])

    response = @card.answer == params[:guess][:response]
    
    @round.guesses.create(
      response: response,
      card_id: @card.id
    )

    if response
      @message = "You are Carrot! We are rooting for you!"
    else
      @message = "You're wrong but we don't carrot all! We're rooting for you!"
    end
    
    erb :"/cards/show"
end
