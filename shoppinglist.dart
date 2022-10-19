import 'dart:io';
void main() {
  var shoppinglist={};
  while(true){
    print("What do you want?");
    var type=stdin.readLineSync() ?? "";
    if(type.isEmpty){
      break;
    }
    else{
      print("How manya kilograms?");
      var amount=stdin.readLineSync();
      shoppinglist.addAll({
        type : amount
      });
      
    }

  }
  print(shoppinglist);
var toplam=0;
  for (var i = 0; i < shoppinglist.keys.length; i++) {
    toplam+=int.parse(shoppinglist.values.elementAt(i));
  }
  print("Sum kilograms: $toplam");
}