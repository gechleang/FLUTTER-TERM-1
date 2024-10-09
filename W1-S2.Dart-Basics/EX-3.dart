void main() {
  // List of student scores
  List<int> scores = [45, 67, 82, 49, 51, 78, 92, 30];

  // You code
  int num=0;
  for (int i=0; i<scores.length; i++){
    if(scores[i]>=50){
      print('Student of ${scores[i]} has passed');
      num+=1;
    }
  }
  print("${num} has passed");
}

