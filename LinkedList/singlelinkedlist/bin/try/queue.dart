class Node {
  int data;
  Node? next;
  Node({required this.data});
}

Node? front;
Node? rear;

enqueue(int data) {
  Node? newNode = Node(data: data);
  if (rear == null) {
    rear = newNode;
    front = newNode;
  } else {
    rear?.next = newNode;
    rear = newNode;
  }
}

dequeue() {
  if (front == null) {
    print('no data ');
  } else {
    front = front?.next;
    if (front == null) {
      rear = null;
    }
  }
}

display() {
  Node? tempFront = front;
  while (tempFront != null) {
    print(tempFront.data);
    tempFront = tempFront.next;
  }
}

void main() {
  enqueue(10);
  enqueue(20);
  enqueue(30);
  enqueue(40);

  dequeue();
  dequeue();

  display();
}
