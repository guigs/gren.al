class JogoDescricao < ActiveRecord::Migration
  def self.up
    change_column :jogos, :data, :datetime
    add_column :jogos, :descricao, :text
  end

  def self.down
    change_column :jogos, :data, :date
    remove_column :jogos, :descricao
  end
end
