Salut, désolé pour le app.rb indigeste. En fait ces gros block de break if sont juste les conditions de victoire/fin de partie que je n'ai pas réussi à mettre en méthode dans une autre classe. J'avais vraiment envie de finir le jeu donc j'ai terminé avec ce code "sale".
Si tu peux m'expliquer comment j'aurais dû faire sur ce point ce serait top.

Sinon j'ai simplement créé 3 classes : Player, Board, et Game qui créé 2 joueurs et un plateau de morpion vide. J'ai mis des variable de cases directement dans mon plateau (board) et je les transforme en symbole X ou O selon le symbole du joueur (elles sont vides par défaut). La classe board_cases je ne voyais pas trop comment l'imbriquer donc j'ai choisi de faire sans.

Puis j'appelle les différentes def dans le app.rb pour lancer le jeu. Celui-ci fonctionne et prévoit normalement toutes les possibilités.

L'autre chose que je n'ai pas réussi à faire est une méthode current_player pour éviter de réécrire la même chose pour le player_1 et le player_2. 
Je n'ai pas non plus réussi à colorer uniquement les symboles.
