// quick sort 

quickSort(List<int> array, int startInd , int endInd){

  int pivot = array[startInd];
  if(startInd>=endInd){
    return;
  }
  int leftInd=startInd+1;
  int rightInd=endInd;

  while(leftInd<=rightInd){
    if(array[leftInd] > pivot && array[rightInd] < pivot){
      swap(array, leftInd, rightInd);
      leftInd++;
      rightInd--;
    }
    else if(array[leftInd] <= pivot){
      leftInd++;
    }
    else if(array[rightInd] >= pivot){
      rightInd--;
    }
  }
  print(rightInd);

  swap(array, startInd , rightInd);
  quickSort(array, startInd, rightInd-1);
  quickSort(array, rightInd+1, endInd);

}

swap(List<int> array , int i , int j){
  int temp= array[i];
  array[i]=array[j];
  array[j]=temp;
}

main(){
  List<int> array=[35,6,8,4,7,4,44,7,4,77,34,66,78];
  quickSort(array, 0, array.length-1);
  print(array);
}