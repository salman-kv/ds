main(){
    List<int> array = [12, 2, 5, 99, 2, 12, 58, 6, 9, 2];
    quicksort(array, 0, array.length-1);
}

quicksort(List<int> array , int startInd , int endInd){
  int pivot=array[startInd];
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
    else if(array[leftInd]<=pivot){
      leftInd++;
    }
    else if(array[rightInd]>=pivot) {
      rightInd--;
    }
  }
  print(rightInd);
  swap(array, rightInd, startInd);
  quicksort(array, startInd, rightInd-1);
  print(array);
  quicksort(array, rightInd+1, endInd);
  print(array);
}

swap(List<int> array , int i , int j){
  int temp=array[i];
  array[i]=array[j];
  array[j]=temp;
}