//no.1 function
// void main(){
//   teriak();
// }

// teriak(){
//   print("halo Sanbers!");
// }


//no.2 Function
// void main(){
//   var num1 = 12;
//   var num2 = 4;
  
//   var hasilKali = kalikan(num1, num2);
//   print(hasilKali);
// }

// kalikan(x, y){
//   return x*y;
// }


//no.3 Function
// void main(){
//   final String name = "Achmad";
//   final int age = 30;
//   final String address = "Jln. Malioboro, Yogyakarta";
//   final String hobby = "Gaming";
  
//   final perkenalan = introduce(name, age, address, hobby);
//   print(perkenalan);
// }

// introduce(String name, int age, String address, String hobby){
//   return 'Nama saya $name, umur saya $age tahun, alamat saya di $address, dan saya punya hobby yaitu $hobby!';
// }


//no.4 Function
void main(){
  var angka = 6;
  int hasil = pemfaktor(angka);
  print(hasil);
}

pemfaktor(int n){
  int faktor = 1;
  int i = 1;
  for (i = 1; i <= n; i++){
    faktor *= i ;
  }
  return faktor;
}
