class Lingkaran {
  double? _jari;
  double _phi = 3.14;

  void setJari(double value){
    if (value < 0){
      value *= -1;
    }
    _jari = value;
  }

  double getJari(){
    return _jari!;
  }

  double luas (){
    return this._jari!*this._jari!*_phi;
  }
}