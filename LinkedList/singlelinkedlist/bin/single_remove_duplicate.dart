
class Node{
  int data;
  Node? next;
  Node({required this.data});
}


Node? head;
Node? tail;


display(){
  Node? temphead=head;
  while(temphead != null){
    print(temphead.data);
    temphead=temphead.next;
  }
}


add(int data){
  Node newnode=Node(data: data);
  if(head==null){
    head=newnode;
  }
  else{
    tail?.next=newnode;
  }
  tail=newnode;
}

removeDupe(){
  Node? current=head;
  while(current != null){
    Node? next=current.next;
    while(next != null && current.data==next.data){
      next=next.next;
    }
    current.next=next;

    if(current.data == next?.data && next==tail){
      current.next=null;
      tail=current;
    }
    current=current.next;
  }
}

void main(List<String> args) {
  add(10);
  add(20);
  add(20);
  add(20);
  add(30);

  removeDupe();
  display();
}







// class Node{
//   int data;
//   Node? next;
//   Node({required this.data});
// }

// Node? head;
// Node? tail;


// add(int data){
//   Node newnode=Node(data: data);
//   if(head == null){
//     head=newnode;
//   }
//   else{
//     tail?.next=newnode;
//   }
// tail=newnode;
// }


// display(){
//   Node? temphead=head;
//   while(temphead != null){
//     print(temphead.data);
//     temphead=temphead.next;
//   }
// }

// removeDuplicate(){
//   Node? current=head;

//   while(current != null){

//     Node? next=current.next;
//     while(next != null && current.data == next.data){
//       next=next.next;
//     }

//     current.next=next;

//   //   if(next==tail && current.data==next?.data){
//   //     print('tail ssection');
//   //  tail=current;
//   //  tail?.next=null;

//   //   }
//     current=next;

//   }
// }

// void main(){
//   add(10);
//   add(10);
//   add(20);
//   add(10);
//   add(10);

//   removeDuplicate();
//   print('head : ${head?.data}');
//   print('tail : ${tail?.data}');
//   display();
// }
