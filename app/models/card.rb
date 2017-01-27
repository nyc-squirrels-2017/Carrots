class Card < ActiveRecord::Base
  validates :question, :answer, presence: true
  
  belongs_to :deck
  has_many :guesses
end
