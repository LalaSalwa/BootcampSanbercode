void main(){
  print(range(1, 10, 2));
  print(range(11, 23, 3));
  print(range(5, 2, 1));
}

List <int> range(int num1, int num2, int step){
  List <int> urut = [];
  if(num1 > num2){
    for(int i = num1 ; i>=num2; i=i-step){
      urut.add(i);
    }
  }
  else{
    for(int i = num1 ; i<= num2; i=i+step){
      urut.add(i);
    }
  }
  return urut; 
}