void main(){
    List<int> array = [7,5,38,3,74,7,5,5,8,55,66,];
    for(int i=0;i<array.length-1;i++){
      int min=i;
      for(int j=i+1;j<array.length;j++){
        if(array[j]<array[min]){
          min=j;
        }
      }  
      int temp=array[min];
      array[min]=array[i];
      array[i]=temp;
    }
    print(array);
}