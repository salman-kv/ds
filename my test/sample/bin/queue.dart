import 'stack.dart';

class Node{
  int data;
  Node? next;
  Node({required this.data});
}

Node? front;
Node? rear;

enqueue(int data){
  Node newNode=Node(data: data);
  if(rear==null){
    front=newNode;
    rear=newNode;
  }
  else{
    rear?.next=newNode;
    rear=newNode;
  }
}

dequeue(){
  if(front==null){
    print('no data');
  }
  else{
    front=front?.next;
    if(front==null){
      rear=null;
    }
  }
}
display(){
  Node? temp=front;
  while(temp != null){
    print(temp.data);
    temp=temp.next;
  }
}

main(){
  enqueue(10);
  enqueue(20);
  enqueue(30);
  enqueue(40);
  display();
  print('---------');
  print(front?.data);
  print(rear?.data);
}