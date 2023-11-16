
class Node{
  int data;
  Node? next;
  Node({required this.data});
}

Node? front;
Node? rear;

enqueue(int data){
  Node? newNode=Node(data: data);
  if(rear==null){
    front=newNode;
    rear = newNode;
  }
  else{
    rear?.next=newNode;
    rear=newNode;
  }
}

dequeue(){
  if(front==null){
    print('no data found');
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
  enqueue(89);
  enqueue(18);
  enqueue(16);
  dequeue();
  display();
}