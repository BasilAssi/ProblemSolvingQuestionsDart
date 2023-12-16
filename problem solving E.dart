/* E. George and Accommodation time limit per test1 second memory limit per test256 megabytes inputstandard input outputstandard output George has recently entered the BSUCP (Berland State University for Cool Programmers). George has a friend Alex who has also entered the university. Now they are moving into a dormitory.

George and Alex want to live in the same room. The dormitory has n rooms in total. At the moment the i-th room has pi people living in it and the room can accommodate qi people in total (pi ≤ qi). Your task is to count how many rooms has free place for both George and Alex.

Input The first line contains a single integer n (1 ≤ n ≤ 100) — the number of rooms.

The i-th of the next n lines contains two integers pi and qi (0 ≤ pi ≤ qi ≤ 100) — the number of people who already live in the i-th room and the room's capacity.

Output Print a single integer — the number of rooms where George and Alex can move in.

Examples inputCopy 3 1 1 2 2 3 3 outputCopy 0 inputCopy 3 1 10 0 10 10 10 outputCopy 2 */

import 'dart:io';

void main() {
  print("Enter the number of rooms:");
  int? n = int.tryParse(stdin.readLineSync() ?? '');
  
  if (n == null || n < 1 || n > 100) {
    print("Invalid input. Please enter a valid number of rooms.");
    return;
  }

  int suitableRooms = 0;
  for (int i = 0; i < n; i++) {
    print("Enter the current and total capacity for room ${i + 1} (separated by space):");
    List<String> room = stdin.readLineSync()?.split(' ') ?? [];
    
    if (room.length != 2) {
      print("Invalid input. Please enter two numbers.");
      continue;
    }

    int? pi = int.tryParse(room[0]);
    int? qi = int.tryParse(room[1]);

    if (pi == null || qi == null || pi < 0 || qi < pi || qi > 100) {
      print("Invalid room data. Skipping room ${i + 1}.");
      continue;
    }

    if (qi - pi >= 2) {
      suitableRooms++;
    }
  }

  print("Number of suitable rooms: $suitableRooms");
}
