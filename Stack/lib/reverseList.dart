//Challenge 1: Reverse a List
// Create a function that prints the contents of a list in reverse order.

import './stack.dart';

void main() {
  final stack = Stack<String>();
  const list = ['S', 'M', 'O', 'K', 'E'];

  for (String char in list) {
    stack.push(char);
  }

  for (int i = 0; i < list.length; i++) {
    print(stack.pop());
  }
}
