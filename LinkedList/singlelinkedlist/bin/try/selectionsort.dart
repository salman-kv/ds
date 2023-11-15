main(){
    List<int> array = [12, 2, 5, 990, 2, 3, 58, 66, 75, 2];
    for(int i=0;i<array.length-1;i++){
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