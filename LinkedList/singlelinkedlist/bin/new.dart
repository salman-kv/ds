class Node{
  int data;
  Node? next;
  Node({required this.data});
}

// Node? head;
// Node? tail;

// addNode(int data){
//   Node? newnode=Node(data: data);
//   if(head == null){
//     head=newnode;
//   }
//   else{
//     tail?.next=newnode;
//   }
//   tail=newnode;
// }

binarySearch(List<int> list,int target){
  int startInd=0;
  int endInd=list.length-1;

  while(startInd <= endInd){
    int mid=((startInd+endInd)/2).toInt();

    if(list[mid]==target){
      print(mid+1);
      break;
    }
    else if(list[mid] > target){
      endInd=mid-1;
    }
    if(list[mid] < target){
      startInd=mid+1;
    }
  }
  print('no value ');
  
}

void main(){
String name='salman';
print(name);
 
 name=name.replaceRange(0, 1, 'd');
 
 print(name);

}