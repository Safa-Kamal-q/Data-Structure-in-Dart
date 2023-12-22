//Challenge 2: Find the Middle Node
// Create a function that finds the middle node of a linked list.
import './linked_list.dart';

void main() {
  final list = LinkedList<int>();
  list.push(4);
  list.push(3);
  list.push(2);
  list.push(1);

  middleNode(list);

  final list1 = LinkedList<String>();
  list1.push('C');
  list1.push('B');
  list1.push('A');

  middleNode(list1);
}

void middleNode(LinkedList linkedList) {
  int middleIndex = linkedList.length ~/ 2;
  print('middle is: ${linkedList.nodeAt(middleIndex)?.value}');
}
