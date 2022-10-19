import 'dart:io';
import 'dart:math';
enum shape{ Rock, Paper, Scissors}

void main() {
  Random random=new Random();
  print("Please enter your name");
  var name=stdin.readLineSync();
  print("Welcome to game $name!!");
 
  
  while(true){
  print("Press enter for exit from the game");
  int pcscore=0, namescore=0;
  while (pcscore<3&&namescore<3) {
    print("Write your choise(Rock,Paper,Scissors)");
    var namechoise=stdin.readLineSync()?? "";
    var pcchoise=random.nextInt(3);
    if(namechoise.isEmpty){
      break;
    }
    else if(namechoise==shape.Rock.name){
      if(pcchoise==shape.Rock.index){
        print("Scoreless! Opponent's choice: Rock");
      }
      else if(pcchoise==shape.Paper.index){
        print("You lost! Opponent's choice: Paper ");
        pcscore++;
      }
      else if(pcchoise==shape.Scissors.index){
        print("You won! Opponent's choice: Scissors ");
        namescore++;
      }
    }
    else if(namechoise==shape.Paper.name){
      if(pcchoise==shape.Rock.index){
        print("You won! Opponent's choice: Rock");
        namescore++;
      }
      else if(pcchoise==shape.Paper.index){
        print("Scoreless! Opponent's choice: Paper");
      }
      else if(pcchoise==shape.Scissors.index){
        print("You lost! Opponent's choice: Scissors");
        pcscore++;
      }
    }
    else if(namechoise==shape.Scissors.name){
      if(pcchoise==shape.Rock.index){
        print("You lost! Opponent's choice: Rock");
        pcscore++;
      }
      else if(pcchoise==shape.Paper.index){
        print("You won! Opponent's choice: Paper");
        namescore++;
      }
      else if(pcchoise==shape.Scissors.index){
        print("Scoreless! Opponent's choice: Scissors");
      }  
   }
    else if(namechoise!=shape.Paper.name&& namechoise!=shape.Rock.name &&namechoise!=shape.Scissors.name){
      print("Please enter your choice correctly");
    }
    ;
    print("$name's score: +$namescore");
    print("Pc score: +$pcscore");
  }
  if (namescore==3) {
    print("Winner of the game: $name");
  }
  else(){
     print("Winner of the game: Pc");
  };
  print("Play again? Yes or no!!");
  var playagain=stdin.readLineSync();
  if(playagain=="Yes"){
  }
  else if (playagain=="no"){
    break;
  };
}}
