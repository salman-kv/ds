
import 'single_remove_duplicate.dart';

class Node{
  int data;
  Node? next;
  Node({required this.data});
}

Node? head;
Node? tail;

// add node

addNode(int data){
  Node? newnode=Node(data: data);
  if(head==null){
    head=newnode;
  }
  else{
    tail?.next=newnode;
  }
  tail=newnode;
}

// display

display(){
  Node? temphead=head;
  while(temphead != null){
    print(temphead.data);
    temphead=temphead.next;
  }
}


// to pointer methord

midTwoPointer(){
  Node? slow=head;
  Node? fast=head;

  while(fast != null && fast.next != null){
    slow=slow?.next;
    fast=fast.next?.next;
  }
  print('mid value ${slow?.data}');

}

// increment method to find midle

midByIncrement(){
  Node? temphead=head;
  Node? mid=head;
  int count=0;
  while(temphead!=null){
    //when count is odd increment mid
    if(count%2==1){
      mid=mid?.next;
    }
    count++;
    temphead=temphead.next;
  }
  print('mid by increment method ${mid?.data}');
}


void main(List<String> args) {
  addNode(10);
  addNode(20);
  addNode(30);
  addNode(40);
  addNode(50);
  addNode(60);
  addNode(70);


  display();

  midTwoPointer();
  midByIncrement();

  print("head :  ${head?.data}");
  print("tail :  ${tail?.data}");

}