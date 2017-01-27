class Round < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user, :deck

  validates :user, :deck, presence: true
end
