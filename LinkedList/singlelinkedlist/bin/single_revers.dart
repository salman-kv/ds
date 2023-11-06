

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


// logic

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



// other logic

reversOtherLogic(){
  Node? pre;
  Node? current=head;
  Node? next;

  while(current != null){
    next=current.next;
    current.next=pre;
    if(pre==null){
      tail=current;
    }
    pre=current;
    current=next;
  }
  head=pre;
}

// recursion 

Node? newtemp;
Node? reversRecursion(Node? temphead){
      if(temphead == null ){
    return newtemp;
  }
  if( temphead.next!=null){
    print(temphead.data);
    head=temphead;
  }
  reversRecursion(temphead.next)?.next=temphead;
  // print(temphead.data);

}


void main(){

addNode(10);
addNode(20);
addNode(30);
addNode(30);
addNode(30);

reversRecursion(head);

disiplay();
print('head : ${head?.data}');
print('tail : ${tail?.data}');
}