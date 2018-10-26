require './classes/Personne'
require './classes/Joueur'
require './classes/Ennemi'
require './classes/Jeu'
require './classes/Monde'

monde = Monde.new

monde.ennemis = [
  Ennemi.new("Balrog"),
  Ennemi.new("Goblin"),
  Ennemi.new("Squelette")
]

joueur = Joueur.new("Jean-Michel Paladin")

puts "\n\nAinsi débutent les aventures de #{joueur.nom}\n\n"

100.times do |tour|
  puts "\n------------------ Tour numéro #{tour} ------------------"

  Jeu.actions_possibles(monde)

  puts "\nQUELLE ACTION FAIRE ?"
  choix = gets.chomp.to_i

  if choix == 0
    joueur.soin
  elsif choix == 1
    joueur.ameliorer_degats
  elsif choix == 99
    break
  else
    ennemi_a_attaquer = monde.ennemis[choix - 2]
    joueur.attaque(ennemi_a_attaquer)
  end

  puts "\nLES ENNEMIS RIPOSTENT !"
  
  monde.ennemis_en_vie.each do |ennemi|
    ennemi.attaque(joueur)
  end

  puts "\nEtat du héro: #{joueur.info}\n"

  break if Jeu.est_fini(joueur, monde)
end

puts "\nGame Over!\n"

if joueur.en_vie
  puts "Vous avez gagné !"
else
  puts "Vous avez perdu !"
end




