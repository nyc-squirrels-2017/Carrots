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
  binding.pry
  # @round = Round.where("user_id && deck_id &&")
  #
  #
  # Round.guesses.create(
  #       response: Guess.to_bool(params[:guess]),
  #       card_id: session[:user][:card_no]
  #       )
  # if
  #
  # else
  #   @errors = ['Incorrect!']
  #
  # end
end
