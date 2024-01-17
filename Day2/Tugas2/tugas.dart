import 'dart:io';
void main (List<String> args){
  //nomor 1 string
  // var word = 'dart';
  // var second = 'is';
  // var third = 'awesome';
  // var fourth = 'and';
  // var fifth = 'I';
  // var sixth = 'love';
  // var seventh = 'it!'; 
  // print(word + " " + second + " " + third + " " + fourth + " " + fifth + " " + sixth + " " + seventh);


  // nomor 2 string
  // var sentence = "I am going to be Flutter Developer";
  // var exampleFirstWord = sentence[0] ;
  // var exampleSecondWord = sentence[2] + sentence[3] ;
  // var thirdWord = sentence[5] + sentence[6] + sentence[7] + sentence[8] + sentence[9]; 
  // var fourthWord = sentence[11] + sentence[12]; 
  // var fifthWord = sentence[14] + sentence[15]; 
  // var sixthWord = sentence[17] + sentence[18] + sentence[19] + sentence[20] + sentence[21] + sentence[22] + sentence[23]; 
  // var seventhWord = sentence[25] + sentence[26] + sentence[27] + sentence[28] + sentence[29] + sentence[30] + sentence[31] + sentence[32] + sentence[33]; 

  // print('First Word: ' + exampleFirstWord);
  // print('Second Word: ' + exampleSecondWord);
  // print('Third Word: ' + thirdWord);
  // print('Fourth Word: ' + fourthWord);
  // print('Fifth Word: ' + fifthWord);
  // print('Sixth Word: ' + sixthWord);
  // print('Seventh Word: ' + seventhWord);


  //nomor 3 string
  // print("Masukkan Nama Depan : " );
  // String depan = stdin.readLineSync()!;
  // print("Masukkan Nama Belakang : ");
  // String belakang = stdin.readLineSync()!;
  // print(depan + " " + belakang);

  //nomor 4 string
  // var a = 5;
  // var b = 10 ;
  // var pertambahan = a + b;
  // var pengurangan = a - b;
  // var perkalian = a*b ;
  // var pembagian= a/b;
  // print(pertambahan);
  // print(pengurangan);
  // print(perkalian);
  // print(pembagian);


  //nomer 1 conditional
  // print("Ingin menginstall applikasi (y/t)? : ");
  // String jawab = stdin.readLineSync()!;
  // if(jawab == 'y'){
  //   print("anda akan menginstall aplikasi dart");
  // }else{
  //   print("aborted");
  // }


  //nomer 2 conditional
  // print("Masukkan nama : ");
  // String nama = stdin.readLineSync()!;
  // print("Masukkan peran (penyihir/guard/warewolf) : ");
  // String peran = stdin.readLineSync()!;
  // if(nama == '' && peran == ''){
  //   print("semua harus diisi!");
  // }
  // else if (peran == ''){
  //   print(nama + " isi peranmu di game ini");
  // }
  // else if(peran == 'penyihir'){
  //   print("Selamat datang di Dunia Werewolf, " + nama + ". Halo Penyihir " + nama + ", kamu dapat melihat siapa yang menjadi werewolf!");
  // }
  // else if(peran == 'guard'){
  //   print("Selamat datang di Dunia Werewolf, " + nama + ". Halo Guard " + nama + ", kamu akan membantu melindungi temanmu dari serangan werewolf.");
  // }
  // else if(peran == 'warewolf'){
  //   print("Selamat datang di Dunia Werewolf, " + nama + ". Halo WareWolf " + nama + ", Kamu akan memakan mangsa setiap malam!");
  // }

  //nomor 3 conditional
  print("masukkan hari : ");
  String hari = stdin.readLineSync()!;
  switch(hari){
    case 'senin' :
    {
    print("Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.");
    }
    break;
  }
}