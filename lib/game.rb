require_relative 'sortear_palavra'
require_relative 'inicializacao'
require_relative 'boneco'
require_relative 'erro'
require_relative 'win'

class Game
    attr_accessor :palavra_sorteada, :ganhou, :palavra_parcial, :array_letras, :size, :erros

    def initialize
        Inicializacao.inicio
        @ganhou = false
        @palavra_sorteada = SortearPalavra.sortear
        @palavra_parcial = []
        @array_letras = []
        @erros = 0
        @size = @palavra_sorteada.size
        @size.times do
            @palavra_parcial.push(" _ ")
        end
        puts @palavra_parcial.join
    end

    def saida
        Boneco.boneco(@erros)
        
        puts @palavra_parcial.join
        puts ""

        puts "Letras ja digitadas: "
        @array_letras.each do |letra|
            print "#{letra}, "
        end
        puts ""
    end

    def descobre_letra(letra_ususario)
        @array_letras.push(letra_ususario)

        unless @palavra_sorteada.include?(letra_ususario)
            @erros += 1
        end
        
        aux = 0
        
        @palavra_sorteada.each_char do |letra_palavra|
            if @palavra_parcial[aux] == " _ "
                if letra_palavra == letra_ususario
                    @palavra_parcial[aux] = letra_ususario
                end
            end
            aux += 1
        end

        
        saida
        fim_jogo
    end

    def fim_jogo
        if @palavra_parcial.join == @palavra_sorteada
            Win.ganhou
            @ganhou = true
        end

        if @erros == 6
            Erro.perdeu
            @ganhou = true
        end
    end
end