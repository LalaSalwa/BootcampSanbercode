import 'lingkaran.dart';
void main(){
  Lingkaran lingkar;
  double hasil;

  lingkar = new Lingkaran();
  lingkar.setJari(14.0);
  hasil = lingkar.luas();
  print(hasil);
}