
class Node{
  int data;
  Node? next;
  Node({required this.data});
}

Node? front;
Node? rear;

enqueue(int data){
  Node newnode=Node(data: data);
  if(rear == null){
    rear=newnode;
    front=newnode;
  }
  else{
    rear?.next=newnode;
    rear=newnode;
  }
}

dequeue(){
  if(front == null){
    print('the queue is empty');
  }
  front=front?.next;
  if(front==null){
    rear=null;
  }
}


display(){
  Node?  tempStart=front;
  while(tempStart != null){
    print(tempStart.data);
    tempStart=tempStart.next;
  }
}

void main(){
  enqueue(10);
  enqueue(20);
  enqueue(30);
  
  dequeue();
  dequeue();
  dequeue();

  display();

  print('front : ${front?.data}');
  print('rear : ${rear?.data}');

}