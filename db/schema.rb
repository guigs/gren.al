# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110130225444) do

  create_table "cidades", :force => true do |t|
    t.string   "nome",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipes", :force => true do |t|
    t.string   "nome",         :null => false
    t.string   "nome_oficial", :null => false
    t.date     "fundacao",     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estadios", :force => true do |t|
    t.string   "nome",             :null => false
    t.string   "nome_oficial",     :null => false
    t.integer  "capacidade",       :null => false
    t.date     "data_inauguracao", :null => false
    t.string   "foto_url"
    t.string   "wikipedia_url"
    t.integer  "cidade_id",        :null => false
    t.integer  "equipe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jogos", :force => true do |t|
    t.integer  "numero",              :null => false
    t.datetime "data"
    t.integer  "equipe_mandante_id",  :null => false
    t.integer  "equipe_visitante_id", :null => false
    t.integer  "estadio_id",          :null => false
    t.integer  "placar_mandante"
    t.integer  "placar_visitante"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "descricao"
  end

  create_table "noticias", :force => true do |t|
    t.datetime "data_hora",  :null => false
    t.string   "titulo",     :null => false
    t.string   "subtitulo"
    t.string   "url",        :null => false
    t.integer  "jogo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
