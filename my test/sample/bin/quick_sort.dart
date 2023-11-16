

qicksort(List<int> array , int stdInd , int endInd){
  if(stdInd>=endInd){
    return ;
  }
  int pivot = array[stdInd];
  int leftInd = stdInd + 1 ; 
  int rightInd = endInd;

  while(leftInd<=rightInd){
    if(array[leftInd] > pivot && array[rightInd] < pivot){
      swap(array, leftInd, rightInd);
      leftInd++;
      rightInd--;
    }
    if(array[leftInd] <= pivot ){
      leftInd++;
    }
    if( array[rightInd] >= pivot ){
      rightInd--;
    }
  }
  print('left : $leftInd');
  print('right : $rightInd');

  swap(array, rightInd, stdInd);
  qicksort(array, stdInd, rightInd-1);
  qicksort(array, rightInd+1, endInd);
}

  swap(List<int> array , int i , int j){
    int temp = array[i] ;
    array[i] = array[j] ; 
    array[j] = temp ;
  }

  void main(){
      List<int> array = [7,5,38,3,74,7,5,5,8,55,66];
      qicksort(array, 0, array.length-1);
      print(array);
  }