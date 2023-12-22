// Challenge 3: Reverse a Linked List
// Create a function that reverses a linked list.
// You do this by manipulating the nodes so that they’re linked in the other direction.

import './linked_list.dart';

void main() {
  LinkedList list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);

  print('list before: ${list}');

  reverseList(list);

  print('list after: ${list}');
}

void reverseList(LinkedList list) {
  Node<dynamic>? currentNode = list.head;
  Node<dynamic>? prevNode;
  Node<dynamic>? nextNode;

  while (currentNode != null) {
    nextNode = currentNode.next;
    currentNode.next = prevNode;
    prevNode = currentNode;
    currentNode = nextNode;
  }

  list.head = prevNode;
}
