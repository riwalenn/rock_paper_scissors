## Projet: Pierre, Feuille & Ciseaux

Créer un programme en ligne de commande qui peut jouer à Pierre, Feuille, Ciseaux.

Le programme doit commencer par afficher ce prompt :
```
Pierre, feuille ou ciseaux ? (p/f/c)
```

Ensuite, il doit lire l'entrée de l'utilisateur et l'utiliser comme suit :
- Si l'utilisateur entre "p", "f" ou "c", traiter cela comme un coup valide.
- Si l'utilisateur entre "q", quitter le programme.
- Si l'utilisateur entre autre chose, afficher "Entrée invalide" et relancer le prompt.
Après que l'utilisateur a fait un choix valide, le programme doit générer un autre coup de manière aléatoire, puis comparer les deux coups selon les règles du jeu.

Par exemple, si vous jouez "pierre" et que le programme joue "feuille", le résultat affiché devrait être :
```
Vous avez joué : pierre
L'IA a joué : feuille
Vous avez perdu
```
Le jeu doit se répéter jusqu'à ce que le joueur quitte en appuyant sur "q".