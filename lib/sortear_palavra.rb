class SortearPalavra
    def self.sortear
        vetor_palavras = []
        File.open(File.expand_path("../../palavras.txt", __FILE__), "r") do |words|
            while line = words.gets 
                vetor_palavras.push(line.chomp)
            end
        end
        vetor_palavras.sample
    end
end