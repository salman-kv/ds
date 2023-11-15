class Node{
  final int data;
  Node? next;
  Node({required this.data});
}

Node? top;

push(int data){
  Node? newNode=Node(data: data);
  if(top==null){
    top=newNode;
  }
  else{
    newNode.next=top;
    top=newNode;
  }
}

pop(){
  if(top==null){
    print('no data');
  }
  else{
    top=top?.next;
  }
}

display(){
  Node? tempTop=top;
  while(tempTop != null){
    print(tempTop.data);
    tempTop=tempTop.next;
  }
}

main(){
  push(10);
  push(20);
  push(30);
  push(40);
  pop();
  display();
}