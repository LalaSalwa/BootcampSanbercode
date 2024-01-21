import 'ammor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main(){
  attack eren = attack();
  armor mikasa = armor();
  beast titan1 = beast();
  human levi = human();

  eren.powerpoint = 8;
  mikasa.powerpoint = 4;
  titan1.powerpoint = 7;
  levi.powerpoint = 10;

  print("Power Point Eren : ${eren.powerpoint}");
  print("Power Point mikas : ${mikasa.powerpoint}");
  print("Power Point titan1 : ${titan1.powerpoint}");
  print("Power Point levi : ${levi.powerpoint}");

  print("sifat dari eren : " + eren.punch());
  print("sifat dari mikasa : " + mikasa.terjang());
  print("sifat dari titan1 : " + titan1.lempar());
  print("sifat dari levi : " + levi.killAlltitan());
}