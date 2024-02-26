#include <iostream>
using namespace std;

int main()
{
    double inputTemp, outputTemp = 0;

    cout << "This program converts temperature in degrees Fahrenheit to degrees Celsius." << endl;
    cout << "What is the temperature in Fahrenheit?: ";
    cin >> inputTemp;
    outputTemp = (inputTemp - 32) / 1.8;
    cout << "\n"
         << inputTemp << "\u00B0" << " Fahrenheit is: "
         << outputTemp << "\u00B0" << " Celsius."
         << endl;
}
