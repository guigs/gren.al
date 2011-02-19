class Estadio < ActiveRecord::Base
  belongs_to :cidade
  belongs_to :equipe
  has_many :jogos
end
