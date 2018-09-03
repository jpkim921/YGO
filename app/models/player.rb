class Player < ActiveRecord::Base
  has_many :cards
  has_many :decks, through: :cards
end
