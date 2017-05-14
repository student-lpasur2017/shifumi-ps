# Initialisation des variables

# $j1                       # Var contenant le nom du joueur 1
# $j2                       # Var contenant le nom du joueur 2
# $choicej1                 # Var contenant le choix du joueur 1
# $choicej2                 # Var contenant le choix du joueur 2
# $nbmatch                  # Var contenant le nombre de match
# scorej1                   # Var contenant le score de j1
# scorej2                   # Var contenant le score de j2

# Message d'accueil

# Afficher les regles du jeu
  # Choix :
    # Pierre : 1
    # Feuille : 2
    # Ciseaux : 3

# Combien de joueur humain

# Si au moins un humain, creer le joueur et l'accueillir avec un message

# Sinon, creer le joueur machine 'cylon' et l'accueillir

# Qui commence aleatoirement

# Combien de match ?
# Lire nbmatch

# Affichage des regles du jeu

# Boucle pour  le jeu
# Tant que nbmatch != 0 on continue de joueur

  # Choix de j1

  # clear : pour que le joueur suivant ne voit pas le choix pas le choix du joueur precedent

  # Choix de j2

  # Si pas egalite entre les differents choix des joueurs on continue
    # switcher les conditions de victoire. Dans le cas d'un victoire on incremente de 1 le score du gagnant
      # Si choix2 a choisi 1 on fait un autre switch pour savoir si choix1 a pris 2 ou 3

      # Si choix2 a choisi 2 on fait un autre switch pour savoir si choix1 a pris 1 ou 3

      # Si choix2 a choisi 3 on fait un autre switch pour savoir si choix1 a pris 2 ou 1
  # fin du switch des conditions de victoires

    # nbmatch--
  # Sinon on recommence la partie

  # Fin de si

# fin tant que

# Afficher le gagnant
