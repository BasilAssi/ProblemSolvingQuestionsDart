/*D. Bear and Big Brother time limit per test1 second memory limit per test256 megabytes inputstandard input outputstandard output Bear Limak wants to become the largest of bears, or at least to become larger than his brother Bob.

Right now, Limak and Bob weigh a and b respectively. It's guaranteed that Limak's weight is smaller than or equal to his brother's weight.

Limak eats a lot and his weight is tripled after every year, while Bob's weight is doubled after every year.

After how many full years will Limak become strictly larger (strictly heavier) than Bob?

Input The only line of the input contains two integers a and b (1 ≤ a ≤ b ≤ 10) — the weight of Limak and the weight of Bob respectively.

Output Print one integer, denoting the integer number of years after which Limak will become strictly larger than Bob.

Examples inputCopy 4 7 outputCopy 2 inputCopy 4 9 outputCopy 3 inputCopy 1 1 outputCopy 1*/

import 'dart:io';

void main() {
  print("Enter the weights of Limak and Bob:");
  List<String> inputs = stdin.readLineSync()?.split(' ') ?? [];
  if (inputs.length < 2) {
    print("Invalid input. Please enter two numbers.");
    return;
  }

  int? a = int.tryParse(inputs[0]);
  int? b = int.tryParse(inputs[1]);

  if (a == null || b == null || a > b) {
    print("Invalid input. Please enter two valid weights where a ≤ b.");
    return;
  }

  int years = 0;
  while (a <= b) {
    a *= 3;
    b *= 2;
    years++;
  }

  print("Limak will become strictly larger than Bob after $years years.");
}
