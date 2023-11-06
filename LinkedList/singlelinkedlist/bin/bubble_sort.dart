// quick sort 

quickSort(List<int> array , int startInd, int endInd){
  int pivot=startInd;
  if(startInd>=endInd){
    return;
  }
  int leftInd=startInd+1;
  int rightInd=endInd;
  while(leftInd<=rightInd){
    print(leftInd);
    if(array[leftInd]>array[pivot] && array[rightInd]<array[pivot]){
      swap(array, leftInd, rightInd);
      leftInd++;
      rightInd--;
    }
    if(array[leftInd]<=array[pivot]){
      leftInd++;
    }
    if(array[rightInd]>=array[pivot]){
      rightInd--;
    }
  }
  swap(array, rightInd, pivot);
  print("here :  ${rightInd}");
  quickSort(array, startInd,rightInd-1);
  print('edel keri');
  quickSort(array, rightInd+1, endInd);
  print('after keri');
 return array;
}

swap(List<int> array,int i,int j){
  int temp=array[i];
  array[i]=array[j];
  array[j]=temp;
}



Future<void> main() async{

  List<int> array=[7,4,6,3,5];
 await quickSort(array, 0, array.length-1);
  print(array);




  // bubble

  // for(int i=0;i<array.length;i++){
  //   for(int j=0;j<array.length-1-i;j++){
  //     if(array[j+1]<array[j]){
  //       int temp=array[j];
  //       array[j]=array[j+1];
  //       array[j+1]=temp;
  //     }
  //   }
  // }
  // print(array);



  // insertion sort

  // for(int i=1;i<array.length;i++){
  //   int current=array[i];
  //   int j=i-1;

  //   while(j>=0 && current>array[j]){
  //     array[j+1]=array[j];
  //     j--;
  //   }
  //   array[j+1]=current;
  // }
  // print(array);



  // selection sort 

  // for(int i=0;i<array.length;i++){
  //   int small=array[i];
  //   int c=i;
  //   for(int j=i;j<array.length;j++){
  //     if(array[j]<small){
  //       small=array[j];
  //       c=j;
  //     }
  //   }
  //   array[c]=array[i];
  //   array[i]=array[c];
  // }

  // print(array);


}