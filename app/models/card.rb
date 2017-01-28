class Card < ActiveRecord::Base
  belongs_to :deck
  # run destroy method on all dependent objects when the user is destroyed
  has_many :guesses, :dependent => :destroy

  validates :question, :answer, presence: true

end
