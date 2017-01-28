class Guess < ActiveRecord::Base
  belongs_to :round
  belongs_to :card

  def self.to_bool(string)
    return nil if string.empty?
    string == "true" ? true : false
  end
end
