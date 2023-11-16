class Node{
  dynamic data;
  String key;
  Node? next;
  Node({required this.data,required this.key});
}

class Hash {
  static int tableSize = 10;
  List<Node?> table = List.filled(tableSize, null);

  hashFunction(String key){
    int hash = 0 ; 
    for(var i in key.codeUnits){
      hash=(hash * 32 + i) % tableSize;
    }
    return hash;
  }

  add(dynamic data , String key ){
    Node newNode = Node(data: data, key: key);
    int index = hashFunction(key);

    if(table[index] == null ){
      table[index] = newNode;
    }
    else{
      Node? current =table[index];
      while(current?.next != null){
        current=current?.next;
      }
      current?.next=newNode;
    }
  }

  diaplay(){
    for(int i=0 ; i<tableSize ; i++){
      if(table[i] == null){
        continue;
      }
      print("--- $i");
      if(table[i]?.next == null){
        print(table[i]?.data);
        continue;
      }
      Node? current=table[i];
      while(current != null){
        print("::  ${current.data}");
        current = current.next;
      }
    }
  }

  get(String key){
    int index = hashFunction(key);
    Node? current=table[index];
    while(current != null){
      if(current.key == key){
        print(current.data);
      }
      current=current.next;
    }
  }

  delete(String key){
    int index = hashFunction(key);
    bool flag=false;

    if(table[index]?.key == key){
      flag=true;
      table[index]=table[index]?.next;
    }

      Node? current=table[index]?.next;
      Node? pre=table[index];

    while(current != null){
      if(current.key==key){
        pre?.next=current.next;
        flag=true;
      }
      pre=current;
      current=current.next;
    }

    if(flag==false){
      print('no data found to delete');
    }
  }


}

 main(){
    Hash map=Hash();
    map.add(10, '100');
    map.add(40, '230');
    map.add(60, '20');
    map.add(70, '24');
    map.diaplay();
    
     print('==========');
     map.delete('100');
     map.diaplay();

  }