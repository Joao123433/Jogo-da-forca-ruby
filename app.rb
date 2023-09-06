require_relative 'lib/game'

jogo = Game.new

until jogo.ganhou do
    print "Insira uma letra: "
    letra_ususario = gets.chomp.to_s
    jogo.descobre_letra(letra_ususario)
end