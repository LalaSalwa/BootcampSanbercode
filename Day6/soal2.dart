import 'dart:async';

void main(List<String> args) {
  print("life");
  Timer(Duration(seconds: 2), ()=> print("never flat"));
  print("is");
}