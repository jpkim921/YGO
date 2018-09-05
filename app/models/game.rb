class Game < ActiveRecord::Base
  has_many :holes
  has_many :players, through: :holes
end
