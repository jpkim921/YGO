class Player < ActiveRecord::Base
  has_many :holes
  has_many :games, through: :holes
end
