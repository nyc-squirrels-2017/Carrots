class User < ActiveRecord::Base
  has_many :rounds, :dependent => :destroy
  has_many :guesses, through: :rounds, :dependent => :destroy

  validates :username, :email,  presence: true, uniqueness: :true
  validates :password, length: { minimum: 6 }

  has_secure_password

  def round_count(deck_id)
    count = 0
    self.rounds.each do |round|
      if round.deck_id == deck_id
        count += 1
      end
    end
    count
  end
end
