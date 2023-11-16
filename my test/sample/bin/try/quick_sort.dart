main() {
  List<int> array = [7, 5, 38, 3, 74, 7, 5, 5, 8, 55, 66];
  quicksort(array, 0, array.length-1);
  print(array);

}

quicksort(List<int> array , int stdInd , int endInd){
  if(stdInd>=endInd){
    return;
  }
  int pivot = array[stdInd];
  int leftInd = stdInd+1;
  int rightInd = endInd;

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

  swap(array, rightInd, stdInd);
  quicksort(array, stdInd, rightInd-1);
  quicksort(array, rightInd+1, endInd);


}

swap(List<int> array , int i , int j ){
  int temp=array[i];
  array[i]=array[j];
  array[j]=temp;
}