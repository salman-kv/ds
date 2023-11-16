main() {
  List<int> array = [5,22,3,6,55,88,9, 5, 98, 55, 66];
  for(int i=1;i<array.length;i++){
    int temp=array[i];
    int j=i-1;
    while(j>=0 && array[j]>temp){
      array[j+1]=array[j];
      j--;
    }
    array[j+1]=temp;
  }
  print(array);
}
