class Jogo < ActiveRecord::Base
  belongs_to :equipe_mandante, :class_name => 'Equipe'
  belongs_to :equipe_visitante, :class_name => 'Equipe'
  belongs_to :estadio
  has_many :noticias, :order => 'data_hora desc'

end
