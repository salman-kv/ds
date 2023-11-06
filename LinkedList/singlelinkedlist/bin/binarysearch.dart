binarySearch(List<int> data,int target){

  int startInd=0;
  int endInd=data.length-1;

  while(startInd <= endInd){
    int mid=(startInd + (endInd-startInd)/2).toInt();
    if(data[mid]==target){
      print(mid);
      return;
    }
    else if(data[mid] > target){
      endInd=mid-1;
    }
    if(data[mid] < target){
      startInd=mid+1;
    }
  } 
  print('no value found');
  
}


void main() {
  List<int> data=[10,20,30,40,50];
  binarySearch(data, 50);
}