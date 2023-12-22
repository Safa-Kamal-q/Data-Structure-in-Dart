//Challenge 1: Print in Reverse
//Create a function that prints the nodes of a linked list in reverse order.

import './linked_list.dart';

void main() {
  final list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  print(list);

  for (int i = list.length - 1; i >= 0; i--) {
    print(list.removeLast());
  }
}
