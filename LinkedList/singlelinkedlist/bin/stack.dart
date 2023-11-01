class Node{
  int data;
  Node? next;
  Node({required this.data});
}

Node? top;

push(int data){
  Node? newnode=Node(data: data);

 
  if(top == null){
    top=newnode;
  }
  else{
    newnode.next=top;
      top=newnode;
  }

}

pop(){
  if(top==null){
    print('stack is underflow');
    return;
  }

  top=top?.next;

}

display(){
  Node? temptop=top;
  while(temptop != null){
    print(temptop.data);
    temptop=temptop.next;
  }
}


void main(){
  push(10);
  push(20);
  push(40);

  pop();
  display();
}