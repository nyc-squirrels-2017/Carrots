class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck
  has_many :guesses, :dependent => :destroy

  validates :user, :deck, presence: true
end
