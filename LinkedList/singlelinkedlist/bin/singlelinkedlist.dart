
// single linked list 

class Node{
  int data;
  Node? next;
  Node({required this.data});
}

Node? head;
Node? tail;

// add 

addNode(int data){
  Node? newnode=Node(data: data);
  if(head == null){
    head=newnode;
  }
  else{
    tail?.next=newnode;
  }
  tail=newnode;
}


// delete

deleteNode(int data){

// on head

  if(data==head?.data){
    head=head?.next;
    return;
  }

  Node? temphead=head;
  Node? pre;

  while(temphead!=null && temphead.data != data){
    pre=temphead;
    temphead=temphead.next;
  }

  // on tail 

  if(data==tail?.data){
    pre?.next=null;
    tail=pre;
    return;
  }

  // other cases

  pre?.next=temphead?.next;


}

display(){
  Node? temphead=head;
  while(temphead != null){
    print(temphead.data);
    temphead=temphead.next;
  }
}


void main() {
  addNode(10);
  addNode(20);
  addNode(30);
  addNode(40);

  deleteNode(20);

  display();
}








// class Node {
//   final int data;
//   Node? next;

//   Node({required this.data});
// }

// my loal knoledge normal linked list creation and printing , insertion

// void main(List<String> arguments) {
//   Node? head;
//   Node? tail;

//   for (int i = 0; i < 5; i++) {
//     Node newNode = Node(data: 10 + i);
//     if (head == null) {
//       head = newNode;
//     } else {
//       tail!.next = newNode;
//     }
//           tail = newNode;
//   }

//   Node? temphead = head;
//   while (temphead != null) {
//     if (temphead.data==12) {
//       Node newofnode=Node(data: 200);
//       newofnode.next=temphead.next;
//       temphead.next=newofnode;
//     }
//     print(temphead.data);
//     temphead = temphead.next;
//   }
// }



// insertion

// void main(){
//   Node? head;
//   Node? tail;

//   for(int i=1;i<=5;i++){
//     Node newNode=Node(data: i);
//     if(head==null){
//       head=newNode;
//     }
//     else{
//       tail?.next=newNode;
//     }
//     tail=newNode;
//   }

//   Node? temphead=head;
//   int dat=0;

//  Node newNode=Node(data: 550);

//   // insert first

//   if(dat==0){
//     newNode.next=head;
//     head=newNode;
//   }

// // insert other positions

//   else{

//     while(temphead != null && temphead.data !=dat){
//     temphead=temphead.next;
//   }
  
// // insert tail

//   if(temphead==tail){
//     tail?.next=newNode;
//     tail=newNode;
//   }

//   // insert middle

//   else{
//     newNode.next=temphead?.next;
//     temphead?.next=newNode;
//   }



//   }



//   // printing the list

//    temphead=head;
//    while(temphead != null){
//     print(temphead.data);
//     temphead=temphead.next;
//    }

//    print('head : ${head?.data}');
//    print('head : ${tail?.data}');

// }






// // deletion

// // void main() {
// //   Node? head;
// //   Node? tail;

// //   for (int i = 0; i < 5; i++) {
// //     Node newNode = Node(data: i);
// //     if (head == null) {
// //       head = newNode;
// //       tail = newNode;
// //     } else {
// //       tail!.next = newNode;
// //       tail = newNode;
// //     }
// //   }

// //   Node? temphead = head;
// //   Node? pre;
// //   int dat=4;

// //   if (head?.data == dat) {
// //     head = head!.next;
// //   } else if (tail?.data == dat) {
// //     while (temphead != null && temphead.data != dat) {
// //       pre = temphead;
// //       temphead = temphead.next;
// //     }
// //     tail = pre;
// //     tail?.next=null;
// //   } else {
// //     while (temphead != null && temphead.data != dat) {
// //       pre = temphead;
// //       temphead = temphead.next;
// //     }
// //     pre?.next = temphead!.next;
// //   }

// //   temphead = head;
// //   while (temphead != null) {
// //     print(temphead.data);
// //     temphead = temphead.next;
// //   }
// //   print(tail?.data);
// // }
