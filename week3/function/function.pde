void setup() {
  size(400, 400);
  
  int c = a_plus_b(2345, 9998);
  println(c);
  
  int d = a_mul_b(22, 101);
  println(d);
  
  println( QA(1) );
  println( QA(2) );
}



int a_plus_b(int a, int b) {
  return a+b;
}

int a_mul_b(int a, int b) {
  return a*b;
}

String QA(int sel) {
  if(sel==1) {
    return "I am happy";
  }else if(sel==2) {
    return "I love cake";
  }
  return "nothing";
}
