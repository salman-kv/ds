
import 'dart:developer';
import 'dart:mirrors';

class Node{
  dynamic data;
  String key;
  Node? next;
  Node({required this.data, required this.key});
}

class Hash{
  static int tableSize=10;
  List<Node?> table=List.filled(tableSize, null);

  hashFunction(String key){
    int hash=0;
    for(var i in key.codeUnits){
      hash = (hash * 32 + i ) % tableSize;
    }
    return hash;
  }

  add(dynamic data , String key){
    Node? newNode = Node(data: data, key: key);
    int index = hashFunction(key);
    if(table[index] == null){
      table[index]=newNode;
    }
    else{
      Node? current = table[index];
      while(current?.next == null){
        current?.next=newNode;
      }
    }
  }

  get(String key){
    int index = hashFunction(key);
    Node? temp=table[index];
    while(temp != null){
      if(temp.key == key){
      print(temp.data);
      }
      temp=temp.next;
    }
  }

  delete(String key){
    int index = hashFunction(key);
    if(table[index]?.key == key){
      table[index]=table[index]?.next;
    }
    else {
      Node? current = table[index]?.next;
      Node? pre = table[index];
      while(current != null ){
        if(current.key == key){
          pre?.next=current.next;
        }
        current=current.next;
      }
    }
  }


  display(){
    for(int i=0;i<tableSize;i++){
     
      print('----- $i');
      if(table[i]?.next==null){
        print(table[i]?.data);
      }
      else
      {
         Node? current = table[i];
        while(current != null){
          print(':: ${current.data}');
          current=current.next;
        }
      }
    }
  }


}

void main(List<String> args) {
   Hash map=Hash();
   map.add(10, '100');
   map.add(30, '230');
   map.add(9, '90');
  map.display();
  map.delete('230');
  print('-------');
  map.display();
}