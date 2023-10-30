class Node {
  final int data;
  Node? next;

  Node({required this.data});
}

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

void main(){
  Node? head;
  Node? tail;

  for(int i=1;i<=5;i++){
    Node newNode=Node(data: i);
    if(head==null){
      head=newNode;
    }
    else{
      tail?.next=newNode;
    }
    tail=newNode;
  }

  Node? temphead=head;
  int dat=0;

 Node newNode=Node(data: 550);

  // insert first

  if(dat==0){
    newNode.next=head;
    head=newNode;
  }

// insert other positions

  else{

    while(temphead != null && temphead.data !=dat){
    temphead=temphead.next;
  }
  
// insert tail

  if(temphead==tail){
    tail?.next=newNode;
    tail=newNode;
  }

  // insert middle

  else{
    newNode.next=temphead?.next;
    temphead?.next=newNode;
  }



  }



  // printing the list

   temphead=head;
   while(temphead != null){
    print(temphead.data);
    temphead=temphead.next;
   }

   print('head : ${head?.data}');
   print('head : ${tail?.data}');

}






// deletion

// void main() {
//   Node? head;
//   Node? tail;

//   for (int i = 0; i < 5; i++) {
//     Node newNode = Node(data: i);
//     if (head == null) {
//       head = newNode;
//       tail = newNode;
//     } else {
//       tail!.next = newNode;
//       tail = newNode;
//     }
//   }

//   Node? temphead = head;
//   Node? pre;
//   int dat=4;

//   if (head?.data == dat) {
//     head = head!.next;
//   } else if (tail?.data == dat) {
//     while (temphead != null && temphead.data != dat) {
//       pre = temphead;
//       temphead = temphead.next;
//     }
//     tail = pre;
//     tail?.next=null;
//   } else {
//     while (temphead != null && temphead.data != dat) {
//       pre = temphead;
//       temphead = temphead.next;
//     }
//     pre?.next = temphead!.next;
//   }

//   temphead = head;
//   while (temphead != null) {
//     print(temphead.data);
//     temphead = temphead.next;
//   }
//   print(tail?.data);
// }
