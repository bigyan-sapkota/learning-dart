import "dart:math";

const double e = 2.718281828459045;
const double pi = 3.1415926;

void main() {
  double angle = pi / 4;
  double sine = sin(angle);
  double cosine = cos(angle);
  Random random = Random();
  int randomNumber = random.nextInt(100);

  print('Sine : $sine');
  print("Cosine: $cosine");
  print("Random Number: $randomNumber");
}
