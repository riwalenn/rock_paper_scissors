import 'dart:io';
import 'dart:math';

enum Move { pierre, feuille, ciseaux }
void main() {

  print("========================================");
  print("| Jeux du Pierre, Feuille ou Ciseaux ! |");
  print("========================================");
  final rng = Random();
  while (true) {
    stdout.write('Pierre, feuille ou ciseaux ? (p/f/c) ');
    final input = stdin.readLineSync();

    //  si prompt valide
    if(input == "p" || input == "f" || input == "c") {
      var playerMove = input == "p" ? Move.pierre : (input == "f" ? Move.feuille : Move.ciseaux);
      final random = rng.nextInt(3);
      final aiMove = Move.values[random];
      String resultText;

      //  jeu
      if(aiMove == playerMove) {
        resultText = "Match nul.";
      } else if(
          (playerMove == Move.pierre && aiMove == Move.ciseaux) ||
              (playerMove == Move.feuille && aiMove == Move.pierre) ||
              (playerMove == Move.ciseaux && aiMove == Move.feuille)
      ) {
        resultText = "Vous avez gagné.";
      } else {
        resultText = "Vous avez perdu.";
      }

      //  affichage des résultats
      print("> Joueur : $playerMove");
      print("> AI: $aiMove");
      print(resultText);
      print("------------------------------------");
    } else if(input == "q") { // si le joueur quitte le programme
      print("==============================");
      print("Vous avez quitté le programme.");
      break;
    } else { // si commande invalide
      print("Entrée invalide.");
    }
  }
}