class Titan {
  int? _powerpoint;

  int get powerpoint => _powerpoint!;
  set powerpoint (int power){
    if (power <= 5){
      power = 5;
    }
    _powerpoint = power;
  }
}