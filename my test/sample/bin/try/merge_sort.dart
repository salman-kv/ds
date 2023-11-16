merge(List<int> array) {
  if (array.length <= 1) {
    return array;
  }
  int mid = array.length ~/ 2;
  List<int> leftArray = array.sublist(0, mid);
  List<int> rightArray = array.sublist(mid);
  return mergeSort(array, merge(leftArray), merge(rightArray));
}

mergeSort(List<int> array, List<int> leftArray, List<int> rightArray) {
  int k = 0, i = 0, j = 0;
  while (i < leftArray.length && j < rightArray.length) {
    if (leftArray[i] <= rightArray[j]) {
      array[k++] = leftArray[i++];
    } else {
      array[k++] = rightArray[j++];
    }
  }
  while (i < leftArray.length) {
    array[k++] = leftArray[i++];
  }
  while (j < rightArray.length) {
    array[k++] = rightArray[j++];
  }
  return array;
}

main() {
  List<int> array = [7, 5, 38, 3, 74, 7, 5, 5, 8, 55, 66];
  merge(array);
  print(array);
}
