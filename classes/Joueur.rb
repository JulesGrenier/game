class Joueur < Personne
    attr_accessor :degats_bonus
  
    def initialize(nom)        
      @degats_bonus = 0
      super(nom)
    end
  
    def degats()
      degats = 30 + @degats_bonus
    end
  
    def soin
        if @points_de_vie >= 100
            puts "#{@nom} n'a pas besoin d'être soigné !"

        else
            @points_de_vie += 20
            if @points_de_vie > 100
                @points_de_vie = 100
            end

            puts "#{@nom} regagne des forces ! (#{@points_de_vie}/100 HP)"
        end
    end
  
    def ameliorer_degats()
      @degats_bonus += 30
      puts "#{@nom} gagne un bonus de #{@degats_bonus} dégats !"
    end
end