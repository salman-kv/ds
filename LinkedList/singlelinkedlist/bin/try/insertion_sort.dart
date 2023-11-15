main(){
   List<int> array = [12, 2, 5, 99, 2, 3, 58, 66, 75, 2]; 
   for(int i=1;i<array.length;i++){
    int temp=array[i];
    int j=i-1;
    while(j>=0 && array[j]>temp){
      array[j+1]=array[j];
      j--;
    }
    array[j+1]=temp;

      }
      print(array);   }