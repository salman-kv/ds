// quick sort 

// quickSort(List<int> array , int startInd, int endInd){
//   int pivot=startInd;
//   if(startInd>=endInd){
//     return;
//   }
//   int leftInd=startInd+1;
//   int rightInd=endInd;
//   while(leftInd<=rightInd){
//     print(leftInd);
//     if(array[leftInd]>array[pivot] && array[rightInd]<array[pivot]){
//       swap(array, leftInd, rightInd);
//       leftInd++;
//       rightInd--;
//     }
//     if(array[leftInd]<=array[pivot]){
//       leftInd++;
//     }
//     if(array[rightInd]>=array[pivot]){
//       rightInd--;
//     }
//   }
//   swap(array, rightInd, pivot);
//   print("here :  ${rightInd}");
//   quickSort(array, startInd,rightInd-1);
//   print('edel keri');
//   quickSort(array, rightInd+1, endInd);
//   print('after keri');
//  return array;
// }

// my try of quick sort

// quickSort(List<int> array,int startInd, int endInd){
//   print(array);
//   int pivotInd=startInd;
//   if(startInd>=endInd){
//     return;
//   }
//   int leftInd=startInd+1;
//   int rightInd=endInd;

//   while(leftInd<=rightInd){
//     if(array[leftInd] > array[pivotInd] && array[rightInd] < array[pivotInd]){
//       swap(array, leftInd, rightInd);
//       leftInd++;
//       rightInd--;
//     }
//     else if(array[leftInd] <= array[pivotInd]){
//       leftInd++;
//     }
//     else if(array[rightInd] >= array[pivotInd]){
//       rightInd--;
//     }
//   }
//   print('rightInd  $rightInd');
//   print('leftInd  $leftInd');
//   swap(array, pivotInd, rightInd);
//   quickSort(array, startInd, rightInd-1);
//   quickSort(array,rightInd+1,endInd);

// }



//  quick sort while method


// quickSort(List<int> array , int startInd , int endInd ){
//   if(startInd>=endInd){
//     return;
//   }
//   int pivot=startInd;
//   int leftInd=startInd+1;
//   int rightInd=endInd;
//   while(leftInd<=rightInd){
//     while(array[leftInd] <= array[pivot]){
//       leftInd++;
//     }
//     while(array[rightInd] > array[pivot]){
//       rightInd--;
//     }
//     if(leftInd<rightInd){
//       swap(array, leftInd, rightInd);
//     }
//   }
//   swap(array, rightInd, pivot);
//   quickSort(array, startInd, rightInd-1);
//   quickSort(array, rightInd+1,endInd);
// }

swap(List<int> array,int i,int j){
  int temp=array[i];
  array[i]=array[j];
  array[j]=temp;
}


// merge sort 

// mergeSort(List<int> array){
//   if(array.length<=1){
//     return array;
//   }
//   int mid=array.length~/2;
//   List<int> lefthalf=array.sublist(0,mid);
//   List<int> secondthalf=array.sublist(mid);
//   return merge(array, mergeSort(lefthalf), mergeSort
//   (secondthalf));

// }

// merge(List<int> array , List<int> lefthalf , List<int> secondthalf){
//   List<int> newArray=[];
//   int i=0,j=0;
  
//   while(i<lefthalf.length && j<secondthalf.length){
 
//     if(lefthalf[i]<secondthalf[j]){
//       newArray.add(array[i++]);
//     }
//     else{
//       newArray.add(secondthalf[j++]);
//     }
//   }
//   while(i<lefthalf.length){
//     newArray.add(lefthalf[i++]);
//   }
//   while(j<secondthalf.length){
//     newArray.add(secondthalf[j++]);
//   }
//   return newArray;
// }

// merge try 14 

// merge(List<int> array){
//   if(array.length<=1){
//     return array;
//   }
//   int mid=array.length~/2;
//   List<int> leftArray=array.sublist(0,mid);
//   List<int> rightArray=array.sublist(mid);
//   print('left $leftArray');
//   print('right $rightArray');
//   return mergeAndJoin(array, merge(leftArray), merge(rightArray));
// }

// mergeAndJoin(List<int> array , List<int> leftArray , List<int> rightArray){
//   int i=0,j=0;
//   List<int> newArray=[];
//   while(i<leftArray.length && j<rightArray.length){
//     if(leftArray[i]<rightArray[j]){
//       newArray.add(leftArray[i++]);
//     }
//     else{
//       newArray.add(rightArray[j++]);
//     }
//   }
//   while(i<leftArray.length){
//     newArray.add(leftArray[i++]);
//   }
//   while(j<rightArray.length){
//     newArray.add(rightArray[j++]);
//   }
//   print('new array $newArray');
//   return newArray;
// }


// Quick sort

quickSort(List<int> array, int startInd , int endInd){
  int pivot=array[startInd];
  if(startInd>=endInd){
    return;
  }

  int leftInd=startInd+1;
  int rightInd=endInd;

  while(leftInd<=rightInd){
    if(array[leftInd] > pivot && array[rightInd] < pivot ){
     swap(array, leftInd, rightInd);
     rightInd--;
     leftInd++; 
    }
    else if(array[leftInd] <= pivot ){
      leftInd++;
    }
    else if(array[rightInd] >= pivot){
      rightInd--;
    }
  }
  print(rightInd);
  print(leftInd);

  swap(array, rightInd, startInd);
  quickSort(array, startInd, rightInd-1);
  quickSort(array, rightInd+1, endInd);
}


Future<void> main() async{

  List<int> array=[3,5,8,2,9,1,4];
  // print(merge(array));
  quickSort(array, 0, array.length-1);
  print(array);
// List<int> h=mergeSort(array);
  // print(h);

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