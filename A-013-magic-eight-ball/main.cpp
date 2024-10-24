#include <iostream>

using namespace std;

string answersList[] = {"No.",
                        "Yes.",
                        "Maybe.",
                        "Maybe some day.",
                        "Can't predict now, try later.",
                        "Definitely.",
                        "Very doubtful.",
                        "As I see it..."};

int main() {
  srand(time(0)); // Seed a new sequence of pseudo-random numbers.
  int RandomIndex = rand() % 4;
  string answer = answersList[RandomIndex];
  cout << answer << "\n";
  return 0;
}
