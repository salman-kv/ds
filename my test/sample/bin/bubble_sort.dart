void main(){
  List<int> array = [8,3,74,5,8,55,66,];

  for(int i=0;i<array.length-1;i++){
    for(int j=0;j<array.length-i-1;j++){
      if(array[j]>array[j+1]){
        int temp=array[j];
        array[j]=array[j+1];
        array[j+1]=temp;
      }
    }
  }
  print(array);
}