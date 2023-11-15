main(){
    List<int> array=[35,6,8,4,7,4,44,7,4,77,34,66,78];
    merge(array);
    print(array);

}

merge(List<int> array ){
  if(array.length<=1){
    return array;
  }
 int mid=array.length~/2;
 List<int> leftArray=array.sublist(0,mid);
 List<int> rightArray=array.sublist(mid);
 return mergeSort(array, merge(leftArray), merge(rightArray));
}

mergeSort(List<int> array , List<int> leftArray , List<int> rightArray){
  // List<int> newArray=[];
  int j=0,i=0,k=0;
  while(i<leftArray.length && j< rightArray.length){
    if(leftArray[i] < rightArray[j]){
      // newArray.add(leftArray[i++]);
      array[k++]=leftArray[i++];
    }
    else{
      // newArray.add(rightArray[j++]);
      array[k++]=rightArray[j++];
    }
  }
  while(i<leftArray.length){
    // newArray.add(leftArray[i++]);
    array[k++]=leftArray[i++];
  }
  while(j<rightArray.length){
    // newArray.add(rightArray[j++]);
    array[k++]=rightArray[j++];
  }
    return array;
  // print(newArray);
  // return newArray;

}