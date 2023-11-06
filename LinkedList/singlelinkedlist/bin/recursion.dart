


f(int n){
  if(n<=1){
    return 1;
  }
  return n*f(n-1);
}


main(){
  print(f(6));

}