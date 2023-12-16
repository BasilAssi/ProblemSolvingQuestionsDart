/* 
Problem H H. Presents time limit per test2 seconds memory limit per test256 megabytes inputstandard input outputstandard output Little Petya very much likes gifts. Recently he has received a new laptop as a New Year gift from his mother. He immediately decided to give it to somebody else as what can be more pleasant than giving somebody gifts. And on this occasion he organized a New Year party at his place and invited n his friends there.

If there's one thing Petya likes more that receiving gifts, that's watching others giving gifts to somebody else. Thus, he safely hid the laptop until the next New Year and made up his mind to watch his friends exchanging gifts while he does not participate in the process. He numbered all his friends with integers from 1 to n. Petya remembered that a friend number i gave a gift to a friend number pi. He also remembered that each of his friends received exactly one gift.

Now Petya wants to know for each friend i the number of a friend who has given him a gift.

Input The first line contains one integer n (1 ≤ n ≤ 100) — the quantity of friends Petya invited to the party. The second line contains n space-separated integers: the i-th number is pi — the number of a friend who gave a gift to friend number i. It is guaranteed that each friend received exactly one gift. It is possible that some friends do not share Petya's ideas of giving gifts to somebody else. Those friends gave the gifts to themselves.

Output Print n space-separated integers: the i-th number should equal the number of the friend who gave a gift to friend number i.

Examples inputCopy 4 2 3 4 1 outputCopy 4 1 2 3 inputCopy 3 1 3 2 outputCopy 1 3 2 inputCopy 2 1 2 outputCopy 1 2 */
import 'dart:io';

void main() {
  print("Enter the number of friends:");
  int? n = int.tryParse(stdin.readLineSync() ?? '');

  if (n == null || n < 1 || n > 100) {
    print("Invalid input. Please enter a valid number of friends.");
    return;
  }

  print("Enter the friend numbers who gave the gifts, separated by spaces:");
  List<String> gifts = stdin.readLineSync()?.split(' ') ?? [];
  if (gifts.length != n) {
    print("Invalid input. Please enter $n numbers.");
    return;
  }

  List<int> friendsWhoGaveGifts = List.generate(n, (i) => 0);

  for (int i = 0; i < n; i++) {
    int? friendNumber = int.tryParse(gifts[i]);
    if (friendNumber == null || friendNumber < 1 || friendNumber > n) {
      print("Invalid friend number. Skipping entry.");
      continue;
    }

    friendsWhoGaveGifts[friendNumber - 1] = i + 1;
  }

  String result = friendsWhoGaveGifts.join(' ');
  print("Friends who received gifts from the corresponding friends:");
  print(result);
}
