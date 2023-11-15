void main() {
  List<int> array = [12, 2, 5, 99, 2, 3, 58, 66, 75, 2];

  for (int i = 0; i < array.length; i++) {
    int flag = 1;
    for (int j = 0; j < array.length - i - 1; j++) {
      if (array[j] > array[j + 1]) {
        flag = 0;
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
    if (flag == 1) {
      break;
    }
    print(array);
  } 
}
