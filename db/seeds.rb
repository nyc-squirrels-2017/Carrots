User.delete_all
Card.delete_all
Deck.delete_all
Round.delete_all
Guess.delete_all

user1 = User.create!({
  :username => "admin",
  :email => "admin@gmail.com",
  :password_digest => "$2a$10$LUOuwlIStjj9EI.jVr4w1uR2HTqtnmYvvVspDGnDj./MA7Zca7mC."
  })

deck1 = Deck.create!({
  :name => "Carrots"
  })

round1 = Round.create!({
  :user_id => user1.id,
  :deck_id => deck1.id
    })

card1 = Card.create!({
  :question => "Are carrots orange?",
  :answer => "true",
  :deck_id => deck1.id
  })

card2 = Card.create!({
    :question => "Does Bugs Bunny hate carrots?",
    :answer => "false",
    :deck_id => deck1.id
    })

guess1 = Guess.create!({
  :response => true,
  :round_id => round1.id,
  :card_id => card1.id
  })

guess2 = Guess.create!({
    :response => true,
    :round_id => round1.id,
    :card_id => card2.id
    })
