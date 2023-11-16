class Node{
  int data;
  Node? next;
  Node({required this.data});
}

Node? top;

push(int data){
  Node newNode=Node(data: data);
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
    print('no data to pop the stack is under flow');
  }
  else{
    top=top?.next;
  }
}

display(){
  Node? temphead=top;
  while(temphead != null){
    print(temphead.data);
    temphead=temphead.next;
  }
}

void main(){
  push(10);
  push(20);
  push(30);
  push(40);
  pop();
 
  display();
}