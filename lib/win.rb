class Win
    def self.ganhou
        system("clear")
        File.open(File.expand_path("../../ascii_art/ganhou.txt", __FILE__), "r") do |words|
            while line = words.gets 
                puts line
            end
        end
    end
end