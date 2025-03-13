void main() {
  // if 문
  print("--------If & Switch--------");
  int number = 2;

  if (number % 3 == 0) {
    print('나머지가 0입니다.');
  } else if (number % 3 == 1) {
    print('나머지가 1입니다.');
  } else {
    print('나머지가 2입니다.');
  }

  // switch 문
  switch (number % 3) {
    case 0:
      print('나머지가 0입니다.');
      break;
    
    case 1:
      print('나머지가 1입니다.');
      break;
    
    default:
      print('나머지가 2입니다.');
      break;
  }

  // for loop
  print("--------For---------");
  int total = 0;

  List<int> numbers = [1, 2, 3, 4, 5, 6];

  for(int i=0; i < numbers.length; i++) {
    total += numbers[i];
  }
  print(total);

  // in loop
  total = 0;

  for(int number in numbers) {
    total += number;
  }
  print(total);
}

