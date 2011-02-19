class Criacao < ActiveRecord::Migration

  def self.up

    create_table :cidades do |t|
      t.string :nome, :null => false
      t.timestamps
    end

    create_table :equipes do |t|
      t.string :nome, :null => false
      t.string :nome_oficial, :null => false
      t.date :fundacao, :null => false
      t.timestamps
    end

    create_table :estadios do |t|
      t.string :nome, :null => false
      t.string :nome_oficial, :null => false
      t.integer :capacidade, :null => false
      t.date :data_inauguracao, :null => false
      t.string :foto_url
      t.string :wikipedia_url
      t.references :cidade, :null => false
      t.references :equipe
      t.timestamps
    end

    create_table :jogos do |t|
      t.integer :numero, :null => false
      t.date :data
      t.belongs_to :equipe_mandante, :null => false
      t.belongs_to :equipe_visitante, :null => false
      t.references :estadio, :null => false
      t.integer :placar_mandante
      t.integer :placar_visitante
      t.timestamps
    end

    create_table :noticias do |t|
      t.datetime :data_hora, :null => false
      t.string :titulo, :null => false
      t.string :subtitulo, :limit => 500
      t.string :url, :null => false
      t.references :jogo
      t.timestamps
    end
    
  end

  def self.down
    drop_table :noticias
    drop_table :jogos
    drop_table :estadios
    drop_table :equipes
    drop_table :cidades
  end
  
end
