void main ()async{
  print("Ready.sing");
  print(await line());
  print(await line2());
  print(await line3());
  print(await line4());
}

Future<String> line() async{
  String line1 = "Pernahkah kau merasa";
  return await Future.delayed(Duration(seconds: 5), ()=> (line1));
}

Future<String> line2() async{
  String line2 = "Pernahkah kau merasa...";
  return await Future.delayed(Duration(seconds: 3), ()=> (line2));
}

Future<String> line3() async{
  String line3 = "Pernahkah kau merasa";
  return await Future.delayed(Duration(seconds: 2), ()=> (line3));
}

Future<String> line4() async{
  String line4 = "hatimu hampa, pernahkah kau merasa hati mu kosong...";
  return await Future.delayed(Duration(seconds: 1), ()=> (line4));
}
