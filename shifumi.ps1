# Initialisation des variables

# $j1                       # Var contenant le nom du joueur 1
$j1 = ""
# $j2                       # Var contenant le nom du joueur 2
$j2 = ""
# $choicej1                 # Var contenant le choix du joueur 1
# $choicej2                 # Var contenant le choix du joueur 2
# $nbmatch                  # Var contenant le nombre de match
# $scorej1                  # Var contenant le score de j1
# $scorej2                  # Var contenant le score de j2
# $nbjh                     # nb joueur humain
# $start                    # qui commence

# function regles_jeu             # affiche regles du jeux
  # Afficher les regles du jeu
    # Choix :
      # Pierre : 1
      # Feuille : 2
      # Ciseaux : 3

function regles_jeu{
  echo  "Le jeu "
        "Liste des choix possibles à saisir : "
        "Pierre : 1"
        "Feuille : 2"
        "Ciseaux : 3"
}

# function debut_jeu($nb)              # fonction qui fait debuter le joueur
  # Si $nb == 1 alors $j1 commence
    # Choix de j1
    # clear : pour que le joueur suivant ne voit pas le choix pas le choix du joueur precedent
    # Choix de j2
  # Sinon
    # Choix de j2
    # clear : pour que le joueur suivant ne voit pas le choix pas le choix du joueur precedent
    # Choix de j1
  # return $choicej1,$choicej2

function debut_jeu($nb){
  if($nb -eq 1){
    $choicej1 = Read-Host("$j1 faite votre choix parmis les 3 propositions ")
    clear
    $choicej2 = Read-Host("$j2 faite votre choix parmis les 3 propositions ")
  }
  else{
    $choicej2 = Read-Host("$j2 faite votre choix parmis les 3 propositions ")
    clear
    $choicej1 = Read-Host("$j1 faite votre choix parmis les 3 propositions ")
  }
  return $choicej1,$choicej2
}

# function afficher_gagnant($scorej1,$scorej2)    # Affiche le gagnant
  # Afficher le gagnant
    # si $scorej1 > $scorej2 c'est $j1 qui gagne et afficher les scores
    # si $scorej1 < $scorej2 c'est $j2 qui gagne et afficher les scores
    # si $scorej1 == $scorej2 c'est $j1 qui gagne et afficher les scores

function afficher_gagnant($scorej1,$scorej2,$j1,$j2){
  If ($scorej1 > $scorej2)
  {
    echo "C'est $j1 qui a remporte la partie avec un score de $scorej1 contre $scorej2 pour $j2"
  }
  If ($scorej1 < $scorej2)
  {
    echo "C'est $j2 qui a remporte la partie avec un score de $scorej2 contre $scorej1 pour $j1"
  }
  If ($scorej1 == $scorej2)
  {
    echo "Egalite dans les scores ! "
  }
}

# Message d'accueil "BIENVENUE SHIFFUMI !!!"
echo "BIENVENUE SHIFUMI !!!!"

# Appel regles_jeu
regles_jeu

# Combien de joueur humain
# Lire $nbjh
$nbjh = Read-Host("Combien de joueur Humain ? 0, 1, 2 ou 3 ? ")

# Si #nbjh est different de 0
  # Si $nbjh est egale a 1, alors $j1 sera un cylon est choisira 1,2,3 aleatoirement avec $choicej1. Son nom $j1 sera "Caprica". Demander nom à $j2
  # Si $nbjh est egale a 2, alors $j1 va affronter $j2 et choisiront 1,2,3 aleatoirement avec $choicej1 et $choicej2. Le nom de $j1 sera "Caprica" et $j2 sera "Gaïus Baltar"
# Sinon, lire $j1 et $j2
  # Demander nom de $j1
  # Demander nom de $j2
$If ($nbjh != 0)
{
  If ($nbjh == 1)
  {
    $j1="Caprica"
    $choicej1=Get-Random -Minimum 1 -Maximum 4
    $j2=Read-Host("Quel est votre nom joueur 2 ? ")
  }
  If ($nbjh == 2)
  {
    $j1="Caprica"
    $choicej1=Get-Random -Minimum 1 -Maximum 4
    $j2="Gaius Baltar"
    $choicej2=Get-Random -Minimum 1 -Maximum 4
  }
}
else{
  $j1=Read-Host("Quel est votre nom joueur 1 ? ")
  $j2=Read-Host("Quel est votre nom joueur 2 ? ")
}

# Qui commence aleatoirement ? Si $start est à 1 c'est $j1 si c'est 2 c'est $j2
  # Si $start == 1 alors c'est $j1 qui commence
  # Sinon, c'est $j2
$start=Get-Random -Minimum 1 -Maximum 3


# Combien de match ?
# Lire $nbmatch
$nbmatch = Read-Host("Combien de match voulez vous faire ? ")

# Boucle pour  le jeu
# Tant que nbmatch != 0 on continue de joueur
while($nbmatch != 0){
  # Initialisation var $resMatch (vider variable)
  $resMatch = 0
  # Appel debut_jeu($start) en faisant $resMatch = debut_jeu($start)
  $resMatch = debut_jeu($start)

}

  # Si pas egalite entre les differents choix des joueurs on continue. On fait le test avec $resMatch[0] et $resMatch[1]
    # switcher les conditions de victoire. Dans le cas d'une victoire on incremente de 1 le score du gagnant
      # Si choix2 a choisi 1 on fait un autre switch pour savoir si choix1 a pris 2 ou 3
      # Si choix2 a choisi 2 on fait un autre switch pour savoir si choix1 a pris 1 ou 3
      # Si choix2 a choisi 3 on fait un autre switch pour savoir si choix1 a pris 2 ou 1
    # fin du switch des conditions de victoires
    # nbmatch--
  # Sinon on recommence la partie
    # Afficher "On recommence la partie"
    # Appel regles_jeu
  # Fin de si
# fin tant que

# Appel afficher_gagnant
