class Node{
  dynamic data;
  dynamic key;
  Node? next;
  Node({required this.data,required this.key});
}

class HashTable{
  static int tableSize=10;
  List<Node?> table=List.filled(tableSize, null);

   hashFunction(String key){
    int hash=0;
    for(var i in key.codeUnits){
      
       hash = (hash * 32 + i) % tableSize;
       print('halo');
       print(i);
      print(hash);
    }
    print(hash);
    return hash;
  }


  add(String key , dynamic data){
    Node newNode=Node(data: data, key: key);
    int index=hashFunction(key);
    if(table[index] == null ){
      table[index]=newNode;
    }
    else{
      Node? current = table[index];
      while(current?.next != null){
        current=current?.next;
      }
      current?.next=newNode;
    }
  }

  get(String key){
    int index=hashFunction(key);
    if(table[index]?.next == null){
      print(table[index]?.data);
    }
    else{
      Node? current=table[index];
      while(current?.next != null){
        if(current?.key==key){
          break;
        }
        current=current?.next;
      }
    }
  }

  delete(String key){
    int index=hashFunction(key);
    print(index);
    print(table[0]?.data);
    if(table[index] == null){
      print('no data found');
      return;
    }
    // else if( table[index]?.next == null && table[index]?.key == key){
    //   print(table[index]?.data);
    //   table[index]=null;
    // }
    else{
      Node? current = table[index];
      Node? pre;
      while(current != null){
        if(current.key == key){
          if(pre == null){
            table[index]=current.next;
            break;
          }
          else
          {
            pre=current.next;
          }
        }
          pre=current;
          current=current.next;
      }
    }
  }

  display(){
    for(int i=0;i<table.length;i++){
      if(table[i] != null){
        print(table[i]?.data);
      var val=table[i];
      while(val?.next != null){
        print(':: ${val?.next?.data}');
        val=val?.next;
      }
      }
    }
  }
}


main(){
  HashTable map=HashTable();
  map.add('100', 900);
  map.add('230', 800);
  map.add('320', 600);
  map.add('07', 9000);
  map.add('400', 300);
  map.display();
  print('----------------');
  map.get('100');
  print('---------------- delete');
  map.delete('100');
  map.delete('100');
   print('---------------- display after delete');
  map.display();
}