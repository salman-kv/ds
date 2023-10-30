class Node {
  int data;
  Node? next;
  Node? prev;

  Node({required this.data});
}

Node? head;
Node? tail;

addNode(int data) {
  Node newnode = Node(data: data);
  if (head == null) {
    head = newnode;
  } else {
    tail?.next = newnode;
    newnode.prev = tail;
  }
  tail = newnode;
}

display() {
  Node? temphead = head;
  while (temphead != null) {
    print(temphead.data);
    temphead = temphead.next;
  }
}

displayRevers() {
  Node? temphead = tail;
  while (temphead != null) {
    print(temphead.data);
    temphead = temphead.prev;
  }
}

delete(int data) {
  if (head?.data == data) {
    head = head?.next;
    head?.prev = null;
    return;
  }
  if (tail?.data == data) {
    tail = tail?.prev;
    tail?.next = null;
    return;
  }
  Node? temphead = head;
  while (temphead != null) {
    if (temphead.data == data) {
      temphead.prev?.next = temphead.next;
      temphead.next?.prev = temphead.prev;
    }
    temphead = temphead.next;
  }
}

insert(int data, int pos) {
  Node newnode = Node(data: data);
  if (head?.data == pos) {
    newnode.next = head;
    head?.prev = newnode;
    head = newnode;
    return;
  }
  if (tail?.data == pos) {
    tail?.next = newnode;
    newnode.prev = tail;
    tail = newnode;
    return;
  }
  Node? temphead = head;

// after the node

  // while (temphead != null) {
  //   if (temphead.data == pos) {
  //     newnode.prev = temphead;
  //     newnode.next = temphead.next;
  //     temphead.next?.prev = newnode;
  //     temphead.next = newnode;
  //   }
  //   temphead=temphead.next;
  // }

// before node

Node? pre;

while(temphead != null && temphead.data != pos){
 pre=temphead;
 temphead=temphead.next;
}
// print('kooi');
// print(pre?.data);
// print(temphead?.data);
// print('kooi');

// newnode.prev=pre?.next;
newnode.next=pre?.next;
newnode.prev=temphead?.prev;
pre?.next=newnode;
temphead?.prev=newnode;
}

void main() {
  addNode(20);
  addNode(30);
  addNode(40);
  addNode(50);

  insert(1000, 50);

  display();
  print('head :   ${head?.data}');
  print('tail :   ${tail?.data}');
}
