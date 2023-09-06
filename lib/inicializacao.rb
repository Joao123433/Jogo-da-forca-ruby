class Inicializacao
    def self.inicio
        File.open(File.expand_path("../../ascii_art/inicializando.txt", __FILE__), "r") do |words|
            while line = words.gets 
                puts line
            end
        end
    end
end