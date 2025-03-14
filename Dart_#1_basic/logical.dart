enum Status {
  approved, // 승인
  pending, // 대기
  rejected, // 거절
}

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

  print("--------While--------");
  // while loop
  int total2 = 0;

  while(total2 < 10) {
    total2 += 1;
    
    if(total2 == 5) {
      break;
    }
  }

  print(total2);

  print("--------Do While--------");
  total2 = 0;

  do {
    total2 += 1;
  } while(total2 < 10);
  // do while은 잘 사용x

  print(total2);

  print("--------contiue--------");

  total2 = 0;

  for(int i = 0; i < 10; i++) {
    if(i == 5) {
      continue;
      // continue => for문을 빠져나가지 않고 현재 룸만 스킵
    }
    print(i);
  }



  print("--------Enum--------");

  Status status = Status.approved;

  if(status == Status.approved){
    print('승인입니다.');
  }else if(status == Status.pending){
    print('대기입니다.');
  }else{
    print('거절입니다.');
  }
}