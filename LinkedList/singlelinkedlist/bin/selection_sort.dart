main(){
   List<int>  array = [5,7,8,44,6,8,2,33,5,8,7];
   for(int i=0;i<array.length-1;i++){
    int min=i;
    for(int j=i+1;j<array.length;j++){
      if(array[j] < array[min]){
        min=j;
      }
    }
    int temp=array[i];
    array[i]=array[min];
    array[min]=temp;
    // array[i]=array[min];
   }
   print(array);
}