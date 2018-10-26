class Personne
    attr_accessor :nom, :points_de_vie, :en_vie
  
    def initialize(nom)
      @nom = nom
      @points_de_vie = 100
      @en_vie = true
    end
  
    def info()

      if en_vie
        return "#{@nom} (#{@points_de_vie}/100 HP)"
      end
      
      return "#{@nom} (vaincu)"
    end
  
    def attaque(personne)

        puts "#{@nom} attaque #{personne}"

        if self.class == Joueur
            puts "#{@nom} bénéficie de #{degats_bonus} dégats bonus"
        end

        personne.subit_attaque(degats)
  
    end
  
    def subit_attaque(degats_recus)
        
      @points_de_vie -= degats_recus
      
      puts " #{@nom} perd #{degats_recus} HP"
      
      @en_vie = @points_de_vie > 0

    end
end