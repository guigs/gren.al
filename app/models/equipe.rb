class Equipe < ActiveRecord::Base
  has_many :jogos
  has_one :estadio
end
