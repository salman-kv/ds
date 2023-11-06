class Node{
  int data;
  Node? next;
  Node({required this.data});
}

Node? head;
Node? tail;

addNode(int data){
  Node? newnode=Node(data: data);
  if(head == null){
    head=newnode;
  }
  else{
    tail?.next=newnode;
  }
  tail=newnode;
}

display(){
  Node? temphead=head;
  while(temphead != null){
    print(temphead.data);
    temphead=temphead.next;
  }

}

findMid(){

  Node? slow=head;
  Node? fast=head;

  while(fast != null && fast.next != null){
    slow=slow?.next;
    fast=fast.next?.next;
  }
  print(slow?.data);

}


main(){
  addNode(10);
  addNode(20);
  addNode(30);
  addNode(40);
  addNode(40);
  addNode(40);
  findMid();
}

