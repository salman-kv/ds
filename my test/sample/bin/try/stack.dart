class Node{
  int data;
  Node? next;
  Node({required this.data});
}

Node? top;

push(int data){
  Node? newNode = Node(data: data);
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
  Node? temptop=top;
  while(temptop != null){
    print(temptop.data);
    temptop=temptop.next;
  }
}

void main(List<String> args) {
  push(10);
  push(8);
  push(6);
  push(16);
  pop();
  display();
}