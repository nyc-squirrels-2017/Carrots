class Guess < ActiveRecord::Base
  # Remember to create a migration!
  validates :response
  belongs_to :round
  belongs_to :card

end
