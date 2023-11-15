main(){
  List<int>  array = [5,7,8,44,6,8,2,33,5,8,7];
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