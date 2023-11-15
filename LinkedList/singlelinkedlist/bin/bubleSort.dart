
// bubble sort 

main(){
  List<int> array = [ 1, 2,5,7,23,6,7,2,3,33];
  for(int i=0;i<array.length-1;i++){
    int flag=0;
    for(int j=0;j<array.length-1-i;j++){
      if(array[j+1] < array[j] ){
        int temp=array[j];
        array[j]=array[j+1];
        array[j+1]=temp;
        flag=1;
      }
    }
    if(flag==1){
      break;
    }
  }
  print(array);
}