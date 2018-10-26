class Jeu
    def self.actions_possibles(monde)
      puts "ACTIONS POSSIBLES :"
  
      puts "0 - Se soigner"
      puts "1 - Améliorer son attaque"
      
      i = 2
      monde.ennemis.each do |ennemi|
        puts "#{i} - Attaquer #{ennemi.info}"
        i = i + 1
      end
      puts "99 - Quitter"
    end
  
    def self.est_fini(joueur, monde)
      if monde.ennemis_en_vie.size == 0 || !joueur.en_vie
          return true
      end
  
      return false
    end
  end