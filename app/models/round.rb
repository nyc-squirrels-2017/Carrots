class Round < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user, :deck
  has_many :guesses

  validates :user, :deck, presence: true
end
