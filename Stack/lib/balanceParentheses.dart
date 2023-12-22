//Challenge 2: Balance the Parentheses
//Check for balanced parentheses. Given a string, check if there are ( and ) characters,
// and return true if the parentheses in the string are balanced.

import './stack.dart';

void main() {
  print('{ h((e))llo(world)() } is: ${isBalance("h((e))llo(world)()")}');
  print('{ (hello world } is: ${isBalance("(hello world")}');
}

String isBalance(String str) {
  final stack = Stack<String>();

  for (int i = 0; i < str.length; i++) {
    if (str[i] == '(') stack.push(str[i]);
    if (str[i] == ')') {
      if (stack.isEmpty) return 'unbalanced parentheses';
      stack.pop();
    }
  }

  return stack.isEmpty ? 'balanced parentheses' : 'unbalanced parentheses';
}
