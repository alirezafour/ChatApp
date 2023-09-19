#ifndef FACTORIAL_HPP
#define FACTORIAL_HPP

inline unsigned int Factorial(unsigned int number)
{
  return number <= 1 ? number : Factorial(number - 1) * number;
}

#endif // !FACTORIAL_H
