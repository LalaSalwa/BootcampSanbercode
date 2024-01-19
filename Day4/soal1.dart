void main(){
  print(range(1, 10));
  print(range(11, 18));
}

List <int> range(int num1, int num2){
  List <int> urut = [];
  if(num1 > num2){
    for(int i = num2 ; i>=num1; i--){
      urut.add(i);
    }
  }
  else{
    for(int i = num1 ; i<= num2; i++){
      urut.add(i);
    }
  }
  return urut; 
}