

class Node{
  int data;
  Node? next;
  Node? prev;
  Node({required this.data});
}

Node? head;
Node? tail;

addNode(int data){
  Node newnode=Node(data: data);
  if(head==null){
    head=newnode;

  }
  else{
    tail?.next=newnode;
  }
  tail=newnode;
}

disiplay(){
  Node? temphead=head;
  while(temphead != null){
    print(temphead.data);
    temphead=temphead.next;
  }
}


revers(){
  Node? current=head;
while(current?.next != tail ){

  Node? temp=current?.next;
  current?.next=temp?.next;
  temp?.next=head;
  head=temp;
  

}
if(current?.next == tail){
  tail?.next=head;
  head=tail;
  tail=current;
  tail?.next=null;

}

}

void main(){

addNode(10);
addNode(20);
addNode(30);
addNode(40);
addNode(50);
addNode(40);
addNode(50);
// revers();
revers();
disiplay();
print(head?.data);
print(tail?.data);
}