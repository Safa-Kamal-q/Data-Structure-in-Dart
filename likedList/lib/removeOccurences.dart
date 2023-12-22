// Challenge 4: Remove All Occurrences
// Create a function that removes all occurrences of a specific element from a linked list.
// The implementation is similar to the removeAfter method that you implemented earlier.
import './linked_list.dart';

void main() {
  LinkedList<int> linkedList = LinkedList<int>();
  linkedList.push(1);
  linkedList.push(3);
  linkedList.push(3);
  linkedList.push(3);
  linkedList.push(4);

  print('Original Linked List: $linkedList');

  removeAllOccurrence(linkedList, 3);

  print('List after removing all occurrences of 3: $linkedList');
}

void removeAllOccurrence(LinkedList list, value) {
  Node<dynamic>? current = list.head;
  Node<dynamic>? previousNode;

  while (current != null) {
    if (current.value == value) {
      if (previousNode == null) {
        list.head = current.next;
        if (list.head == null) {
          list.tail == null;
        }
      } else {
        previousNode.next = current.next;
        if (current.next == null) {
          list.tail = previousNode;
        }
      }
    } else {
      previousNode = current;
    }
    current = current.next;
  }
}
