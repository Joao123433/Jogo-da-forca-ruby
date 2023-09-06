class Erro
    def self.perdeu
        system("clear")
        File.open(File.expand_path("../../ascii_art/perdeu.txt", __FILE__), "r") do |words|
            while line = words.gets 
                puts line
            end
        end
    end
end