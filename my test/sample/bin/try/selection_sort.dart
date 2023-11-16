main() {
  List<int> array = [23, 5, 7, 5, 5, 8, 55, 66];
  for(int i=0;i<array.length;i++){
    int min=i;
    for(int j=i+1;j<array.length;j++){
      if(array[j]<array[min]){
        min=j;
      }
    }
    int temp=array[i];
    array[i]=array[min];
    array[min]=temp;
  }
  print(array);
}
