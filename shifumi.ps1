# Initialisation des variables

# $j1                       # Var contenant le nom du joueur 1
# $j2                       # Var contenant le nom du joueur 2
# $choicej1                 # Var contenant le choix du joueur 1
# $choicej2                 # Var contenant le choix du joueur 2
# $nbmatch                  # Var contenant le nombre de match
# $scorej1                  # Var contenant le score de j1
# $scorej2                  # Var contenant le score de j2
# $nbjh                     # nb joueur humain
# $start                    # qui commence

# Message d'accueil "BIENVENUE SHIFFUMI !!!"

# Afficher les regles du jeu
  # Choix :
    # Pierre : 1
    # Feuille : 2
    # Ciseaux : 3

# Combien de joueur humain
# Lire $nbjh

# Si #nbjh est different de 0
  # Si $nbjh est egale a 1, alors $j1 sera un cylon est choisira 1,2,3 aleatoirement avec $choicej1. Son nom $j1 sera "Caprica". Demander nom à $j2
  # Si $nbjh est egale a 2, alors $j1 va affronter $j2 et choisiront 1,2,3 aleatoirement avec $choicej1 et $choicej2. Le nom de $j1 sera "Caprica" et $j2 sera "Gaïus Baltar"
# Sinon, lire $j1 et $j2
  # Demander nom de $j1
  # Demander nom de $j2

# Qui commence aleatoirement ? Si $start est à 1 c'est $j1 si c'est 2 c'est $j2
  # Si $start == 1 alors c'est $j1 qui commence
  # Sinon, c'est $j2

# Combien de match ?
# Lire $nbmatch

# Boucle pour  le jeu
# Tant que nbmatch != 0 on continue de joueur
  # Si $start == 1 alors $j1 commence
    # Choix de j1
    # clear : pour que le joueur suivant ne voit pas le choix pas le choix du joueur precedent
    # Choix de j2
  # Sinon
    # Choix de j2
    # clear : pour que le joueur suivant ne voit pas le choix pas le choix du joueur precedent
    # Choix de j1
  # Si pas egalite entre les differents choix des joueurs on continue
    # switcher les conditions de victoire. Dans le cas d'une victoire on incremente de 1 le score du gagnant
      # Si choix2 a choisi 1 on fait un autre switch pour savoir si choix1 a pris 2 ou 3
      # Si choix2 a choisi 2 on fait un autre switch pour savoir si choix1 a pris 1 ou 3
      # Si choix2 a choisi 3 on fait un autre switch pour savoir si choix1 a pris 2 ou 1
    # fin du switch des conditions de victoires
    # nbmatch--
  # Sinon on recommence la partie
    # Rappel des regles
    # Si $start == 1 alors $j1 commence
      # Choix de j1
      # clear : pour que le joueur suivant ne voit pas le choix pas le choix du joueur precedent
      # Choix de j2
    # Sinon
      # Choix de j2
      # clear : pour que le joueur suivant ne voit pas le choix pas le choix du joueur precedent
      # Choix de j1
  # Fin de si
# fin tant que

# Afficher le gagnant
  # si $scorej1 > $scorej2 c'est $j1 qui gagne et afficher les scores
  # si $scorej1 < $scorej2 c'est $j2 qui gagne et afficher les scores
  # si $scorej1 == $scorej2 c'est $j1 qui gagne et afficher les scores
