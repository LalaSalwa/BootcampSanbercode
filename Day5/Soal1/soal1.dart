class SegiTiga {
  double alas = 1;
  double tinggi = 1;
  double setengah = 0.5;

  double luassegi() {
    return alas * tinggi * setengah;
  }
}

void main(){
  SegiTiga segitiga;
  double hasil;
  segitiga = new SegiTiga();
  segitiga.alas = 20.0;
  segitiga.tinggi = 30.0;
  hasil = segitiga.luassegi();
  print(hasil);
}