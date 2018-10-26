class Monde
    attr_accessor :ennemis
  
    def ennemis_en_vie()
      vivants = []
      @ennemis.each do |ennemi|
          if ennemi.en_vie
              vivants << ennemi
          end
      end
      return vivants
    end
  end