#include <iostream>
using namespace std;

int main() {
    srand(time(0)); // Seed a new sequence of pseudo-random numbers.

    string firstNameList[4] =
        {"Ben", "Michelle", "Frederick", "Deltrese"};
    string lastNameList[4] =
        {"Doe", "Shelly", "Fitzgeraldine", "Shoemaker"};

    int RandomIndex = rand() % 4;

    string firstName = firstNameList[RandomIndex];
    string lastName = lastNameList[RandomIndex];

    cout << firstName << " " << lastName << " \n";

    return 0;
}
