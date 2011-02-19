# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Noticia.destroy_all
Jogo.destroy_all
Estadio.destroy_all
Equipe.destroy_all
Cidade.destroy_all

porto_alegre = Cidade.create({:nome => 'Porto Alegre'})
rivera = Cidade.create({:nome => 'Rivera'})
gremio = Equipe.create({
    :nome => 'Grêmio',
    :nome_oficial => 'Grêmio Foot-Ball Porto Alegrense',
    :fundacao => Date.civil(1903, 9, 15),
  })
internacional = Equipe.create({
    :nome => 'Internacional',
    :nome_oficial => 'Sport Club Internacional',
    :fundacao => Date.civil(1909, 4, 4)
  })
olimpico = Estadio.create({
    :nome => 'Olímpico',
    :nome_oficial => 'Estádio Olímpico Monumental',
    :capacidade => 45000,
    :data_inauguracao => Date.civil(1954, 9, 19),
    :equipe => gremio,
    :cidade => porto_alegre
  })
beira_rio = Estadio.create({
    :nome => 'Beria-Rio',
    :nome_oficial => 'Estádio José Pinheiro Borda',
    :capacidade => 55000,
    :data_inauguracao => Date.civil(1969, 4, 6),
    :equipe => internacional,
    :cidade => porto_alegre
  })
atilio_paiva = Estadio.create({
    :nome => 'Atílio Paiva',
    :nome_oficial => 'Estádio Atilio Paiva Oliveira',
    :foto_url => 'http://www.worldstadiums.com/stadium_pictures/south_america/uruguay/rivera_olivera.jpg',
    :wikipedia_url => 'http://pt.wikipedia.org/wiki/Est%C3%A1dio_Atilio_Paiva_Olivera',
    :capacidade => 28000,
    :data_inauguracao => Date.civil(1927, 1, 1),
    :cidade => rivera
  })
grenal_384 = Jogo.create({
    :numero => 384,
    :data => Date.civil(2011, 1, 30),
    :equipe_mandante => gremio,
    :equipe_visitante => internacional,
    :estadio => atilio_paiva
  })
noticia_1 = Noticia.create({
    :data_hora => DateTime.civil(2011, 1, 6, 18, 47, 0),
    :titulo => 'Reunião define manutenção do Gre-Nal em Rivera para o dia 30 de janeiro',
    :subtitulo => 'Representantes das duas equipes acharam melhor manter a data inicial',
    :url => 'http://www.clicrbs.com.br/esportes/rs/noticias/futebol-gauchao,3167104,Reuniao-define-manutencao-do-Gre-Nal-em-Rivera-para-o-dia-30-de-janeiro.html',
    :jogo => grenal_384
  })
noticia_2 = Noticia.create({
    :data_hora => DateTime.civil(2011, 1, 6, 20, 3, 0),
    :titulo => 'Se não houver pagamento de cota no Gre-Nal, Grêmio quer jogar no Olímpico',
    :subtitulo => 'Clube espera uma reunião com a Federação para tratar do assunto',
    :url => 'http://www.clicrbs.com.br/esportes/rs/noticias/futebol-gauchao,3167341,Se-nao-houver-pagamento-de-cota-no-Gre-Nal-Gremio-quer-jogar-no-Olimpico.html',
    :jogo => grenal_384
  })
noticia_3 = Noticia.create({
    :data_hora => DateTime.civil(2011, 1, 17, 20, 29, 0),
    :titulo => 'Primeiro Gre-Nal da temporada é confirmado para Rivera',
    :subtitulo => 'Federação Gaúcha de Futebol vai pagar cota de R$ 300 mil para cada clube e custear o transporte das delegações',
    :url => 'http://www.clicrbs.com.br/esportes/rs/noticias/futebol-gauchao,3178789,Primeiro-Gre-Nal-da-temporada-e-confirmado-para-Rivera.html',
    :jogo => grenal_384
  })
Noticia.create({
  :data_hora => DateTime.civil(2011, 1, 22, 20, 7, 0),
  :titulo => 'Siegmann: "Quem não aguenta o repuxo, não pode ser jogador de futebol"',
  :subtitulo => 'Vice de futebol colorado afirma que grupo precisa estar pronto para o Gre-Nal',
  :url => 'http://zerohora.clicrbs.com.br/zerohora/jsp/default.jsp?uf=1&local=1&newsID=a3184697.xml&channel=13&tipo=1&section=Geral',
  :jogo => grenal_384
})
Noticia.create({
  :data_hora => DateTime.civil(2011, 1, 23, 15, 59, 0),
  :titulo => 'Brigada Militar realiza reunião preparatória para o Gre-Nal nesta segunda-feira',
  :subtitulo => 'Nesta segunda-feira (24), às 14 horas, no Quartel do Comando-Geral da Brigada Militar, será realizada reunião preparatória ao clássico Gre-Nal que será disputado no próximo dia 30, em Rivera, no Uruguai',
  :url => 'http://www2.odiario.net/noticia/reader/noticia/37773',
  :jogo => grenal_384
})
Noticia.create({
  :data_hora => DateTime.civil(2011, 1, 23, 9, 0, 0),
  :titulo => 'Inter vê time B em condições de encarar o Grêmio',
  :subtitulo => 'Jovens atletas colorados duelarão com time reserva do maior rival dentro de uma semana',
  :url => 'http://globoesporte.globo.com/futebol/campeonatos-estaduais/campeonato-gaucho/noticia/2011/01/inter-ve-time-b-em-condicoes-de-encarar-o-gremio.html',
  :jogo => grenal_384
})