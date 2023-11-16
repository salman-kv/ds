void main(List<String> args) {
        List<int> array = [7,5,38,3,74,7,5,5,8,55,66];
        for(int i=0;i<array.length;i++){
          for(int j=0;j<array.length-1-i;j++){
            if(array[j]>array[j+1]){
              int temp=array[j];
              array[j]=array[j+1];
              array[j+1]=temp;
            }
          }
        }

        print(array);
}