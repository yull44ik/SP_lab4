#include <iostream>
#include "calculator.h"

int main() {
    Calculator calculator;

    double num1, num2;
    
    std::cout << "Enter the first number: ";
    std::cin >> num1;

    std::cout << "Enter the second number: ";
    std::cin >> num2;

    int sum = calculator.Add(num1, num2);
    int difference = calculator.Sub(num1, num2);
    int product = calculator.Mul(num1, num2);

    std::cout << "Sum: " << sum << std::endl;
    std::cout << "Difference: " << difference << std::endl;
    std::cout << "Product: " << product << std::endl;

    // Handling division separately to avoid integer division
    double quotient = calculator.Div(num1, num2);
    std::cout << "Quotient: " << quotient << std::endl;

    return 0;
}

