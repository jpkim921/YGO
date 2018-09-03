class Card < ActiveRecord::Base
  belongs_to :deck
  belogns_to :player
end
